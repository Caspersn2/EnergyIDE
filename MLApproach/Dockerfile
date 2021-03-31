FROM python:3.8-slim-buster

COPY requirements.txt requirements.txt

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

COPY . /app/
WORKDIR /app

CMD train.py -s

ENTRYPOINT [ "python3", "-u", "server.py", "--urls", "http://*:5002"]