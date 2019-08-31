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
fd.seek(59)

compressed = fd.read(3218328)
open(Path(workdir, 'bomber.py.compressed'), 'w').write(compressed)

decoded = base64.b64decode(compressed)
open(Path(workdir, 'bomber.py.decoded'), 'wb').write(decoded)

decompressed = zlib.decompress(decoded)
open(Path(workdir, 'bomber.py.decompressed'), 'wb').write(decompressed)
