# BombCrack
A cracker for the `bomber.py` obfuscated Python script from TheSpeedX/TBomb.

# Usage
Just a few commands and you get somewhat cracked (script is mostly `eval` and twice compressed - with `zlib` and `lzma` respectively.)

```bash
$ git clone https://github.com/DarkestEntropy/BombCrack.git
$ cd BombCrack
$ pip install -r requirements.txt # Note - you may possibly need to run this as root or append --user flag
$ make clean crack prettify # Prettifying may take some time. If you don't want it - remove 'prettify' target
```

There you go, a cracked TBomb is at your hand (just next to the Makefile).
Catch this, @TheSpeedX.
