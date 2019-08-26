import tokenize
from pathlib import Path
from sys import argv
workdir = Path(argv[1])

fd = open(Path(workdir, 'bomber.py.decompressed'), 'rb')

tokens = []
for t_type, string, *_ in tokenize.tokenize(fd.readline):
    token = [t_type, string]
    if t_type == 3:
        token[1] = string.encode('utf8').decode('unicode-escape') 
    tokens.append(token)
fd.close()

fd = open(Path(workdir, 'bomber.py.debytized'), 'wb')
fd.write(tokenize.untokenize(tokens))
fd.flush()
fd.close()
