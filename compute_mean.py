import argparse
import numpy as np

parser = argparse.ArgumentParser()
parser.add_argument('--namefile', type=str)
parser.add_argument('--seed', type=int)
args = parser.parse_args()

np.random.seed(args.seed)
#### Add code here that samples a random vector of size 100, and returns the mean

result = 0
##

with open('results/' + args.namefile, 'w') as file:
#    # Convert the number to a string and write it to the file
    file.write(str(result))

print("The number has been written to " + args.namefile)