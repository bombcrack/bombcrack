from pathlib import Path
from sys import argv
from os import linesep

workdir = Path(argv[1])
crackdir = Path(argv[2])

lines = open(Path(workdir, 'bomber.py.decompressed')).readlines()
cracker = open(Path(crackdir, 'cracker.py')).read()
with open(Path(workdir, 'bomber.py.cracker_attached'), 'w') as fd:
    for line in lines:
        if not line.startswith('eval'):
            fd.write(line + linesep)
    fd.write(cracker)
    fd.flush()
