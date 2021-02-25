def write_to_file(method_name, results, output, params = None):
    with open(output, 'a+') as data_file:
        data_file.write(method_name)

        if params:
            data_file.write(f' --> {params}')

        data_file.write('\n')
        for (k, v) in results.items():
            data_file.write(f'{k},{v}\n')
        data_file.write('\n')