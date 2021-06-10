import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders

gmail_user = "applicationds317@gmail.com"
gmail_pass = "@pplicationDs317"

def create_attachment(file_name):
    file = open(file_name, 'rb')
    payload = MIMEBase('text', 'csv')
    payload.set_payload(file.read())
    file.close()
    encoders.encode_base64(payload)
    payload.add_header('Content-Disposition', 'attachment', filename = file_name)
    return payload


def create_mail(email, output_file):
    message = MIMEMultipart()
    message["From"] = gmail_user
    message["To"] = email
    message["Subject"] = "Benchmark results"
    message.attach(MIMEText("These are the results from benchmarking", 'plain', 'utf-8'))

    file_prefix = output_file.split('.csv')[0]
    message.attach(create_attachment(file_prefix + '_stats_pkg_power.csv'))
    message.attach(create_attachment(file_prefix + '_stats_ram_power.csv'))
    message.attach(create_attachment(file_prefix + '_stats_run_time.csv'))

    return message


def create_raw_results_mail(email, output_file):
    message = MIMEMultipart()
    message["From"] = gmail_user
    message["To"] = email
    message["Subject"] = "Benchmark raw results"
    message.attach(MIMEText("These are the unprocessed results from benchmarking", 'plain', 'utf-8'))

    message.attach(create_attachment(output_file))

    return message


def create_fail_mail(email, *files):
    message = MIMEMultipart()
    message["From"] = gmail_user
    message["To"] = email
    message["Subject"] = "Benchmarks failed to complete"
    message.attach(MIMEText("These are the log files from the stdout and stderr", 'plain', 'utf-8'))

    for f in files:
        message.attach(create_attachment(f))

    return message


def send_mail(email, message):
    server = smtplib.SMTP("smtp.gmail.com", 587)
    server.starttls()
    server.login(gmail_user, gmail_pass)
    server.sendmail(gmail_user, email, message.as_string())
    server.close()


def send_results(email, output_file):
    message = create_mail(email, output_file)
    send_mail(email, message)

def send_raw_results(email, output_file):
    message = create_raw_results_mail(email, output_file)
    send_mail(email, message)

def send_fail(email, *files):
    message = create_fail_mail(email, *files)
    send_mail(email, message)
