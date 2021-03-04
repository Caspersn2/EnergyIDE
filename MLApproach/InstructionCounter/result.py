from collections import Counter


result_store = []


def add_results(results, method_name, method_args = None):
    single_result = {
        'name': method_name,
        'args': method_args,
        'res': results
    }

    result_store.append(single_result)


def get_results():
    return [x['res'] for x in result_store]


def output(output):
    if output:
        with open(output, 'a+') as data_file:
            for result in result_store:
                data_file.write(result['name'])

                if result['args']:
                    data_file.write(f' --> {result["args"]}')

                data_file.write('\n')
                for (k, v) in result['res'].items():
                    data_file.write(f'{k},{v}\n')
                data_file.write('\n')