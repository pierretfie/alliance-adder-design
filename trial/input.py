import subprocess

try:
    # Run a command and capture output
    i = 'ls'
    input = [f'{i}','-l']
    result = subprocess.run(input, capture_output=True, text=True, check=True)
    print(result.stdout)
except subprocess.CalledProcessError as e:
    print(f"An error occurred: {e}")

