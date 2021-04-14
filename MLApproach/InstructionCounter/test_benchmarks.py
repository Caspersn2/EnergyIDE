import os
import subprocess
import msvcrt

correct = 0
not_correct = 0

def count_benchmark(benchmark, libs=[]):
    global correct
    global not_correct
    path = '../benchmarks/' + benchmark + '/bin/Debug/net5.0/project.dll'
    instruction = 'python .\main.py -a -f ' + path
    
    if len(libs) > 0:
        instruction += ' --library'
        for lib in libs:
            instruction += ' ./init_library/' + lib + '.il'
    
    print(instruction)
    
    process = subprocess.Popen(instruction, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, err = process.communicate()
    
    if (len(output) == 0):
        # The program works!
        correct += 1
        return 0
    elif (len(err) != 0):
        # The program do not work
        not_correct += 1
        print("--------------")
        lines = str(err)[2:][:-1].split('\n')
        print(lines)
        for line in lines:
            print('.')
        return 1
    print('Test something')
    return 1

if __name__ == '__main__':
    benchmarks = os.listdir('../benchmarks')
    should_exit = False
    
    for benchmark in benchmarks:
        if (should_exit):
            break
        running = True
        libs = []
        while running :
            is_output = count_benchmark(benchmark, libs)
            
            if (is_output == 1):
                print('Going to next when key pressed')
                key = chr(ord(msvcrt.getch()))
                
                if key == 'x': 
                    should_exit = True
                    break
                elif key == 'n':
                    running = False
                elif key == 'l':
                    lib = input('which lib: ')
                    libs.append(lib)
            else:
                running = False
    print('Done!')

