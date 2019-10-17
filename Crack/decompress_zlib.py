# This script is used to decompress zlib-compressed `bomber.py` contents.

import zlib
import base64
from pathlib import Path
from sys import argv

workdir = Path(argv[1])
workdir.mkdir(exist_ok=True)

# Work on original Base64-encoded + zlib-compressed file
# In the end we get raw python source, yet obfuscated
fd = open(Path(workdir, 'bomber.py.source'))
while True:
    s = fd.read(16)
    index = s.find('\'')
    if index >= 0:
        fd.seek(fd.tell() - (len(s) - index - 1))
        break

compressed = str()
while True:
    s = fd.read(512)
    index = s.find('\'')
    if index < 0:
        compressed += s
    else:
        compressed += s[:index]
        break

open(Path(workdir, 'bomber.py.compressed'), 'w').write(compressed)

decoded = base64.b64decode(compressed)
open(Path(workdir, 'bomber.py.decoded'), 'wb').write(decoded)

decompressed = zlib.decompress(decoded)
open(Path(workdir, 'bomber.py.decompressed'), 'wb').write(decompressed)
