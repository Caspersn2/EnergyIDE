def write_to_file(method_name, results, output):
    with open(output, 'a+') as data_file:
        data_file.write(method_name + '\n')
        for (k, v) in results.items():
            data_file.write(f'{k},{v}\n')
        data_file.write('\n')