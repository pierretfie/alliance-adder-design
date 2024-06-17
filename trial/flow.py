from subprocess import run, CalledProcessError
from time import sleep
def run_synthesis_flow(file):
    print('********************************maina************************************')

    asimut1 = ['asimut','-b',f'{file}',f'{file}_pat',f'{file}_simulation']
    boom = ['boom','-VA',f'{file}',f'{file}_boom']
    boog = ['boog',f'{file}_boom',f'{file}_boog']
    loon = ['loon',f'{file}_boog',f'{file}_loon']
    asimut2 = ['asimut',f'{file}_loon',f'{file}_pat',f'{file}_as'] 
    tasks = [asimut1,boom,boog,loon,asimut2]
    try:
        for i in tasks: 
           results = run(i, capture_output = True, text = True, check = True, errors ='replace')
           print(results.stdout)
           sleep(2)
    except CalledProcessError as e:
        print(f'An error occured:\n{e}')
        print("Standard Error:\n", e.stderr)


run_synthesis_flow(input('Enter the base name of your Files:\n'))	
