# BombCrack
A cracker for the `bomber.py` obfuscated Python script from TheSpeedX/TBomb (also check issue [#22](https://github.com/TheSpeedX/TBomb/issues/22).)

## Project is discontinued
Since TBomb authors have decided to switch from MIT license to Creative Commons, I'm no longer allowed to modify TBomb sources, as well as using TBomb from its original authors and I will no longer synchronize my mirror repository.

I will not hide this and mirror repositories from public, however, they will be archived, and no changes will be made in future.

*Good night sweet crack~*

# Usage
Just a few commands and you get somewhat cracked (script is mostly `eval` and twice compressed - with `zlib` and `lzma` respectively.)

## Requirements
You'll need `autopep8` for cracked source beautifying
(you can install it with `pip`- see instructions below),
`git` and `make`, which you will have to install manually with your system package manager (these packages are usually shipped in base development sets such as ArchLinux's `base-devel`.)

## Instructions
_So, how do I shoot web?_
```bash
$ git clone https://github.com/DarkestEntropy/BombCrack.git
$ cd BombCrack
$ pip install -r requirements.txt # Note - you may possibly need to run this as root or append --user flag
$ make clean crack prettify # Prettifying may take some time. If you don't want it - remove 'prettify' target
```

There you go, a cracked TBomb is at your hand (just next to the Makefile, named `bomber.py.cracked` - try running it with Python - you'll see it's fully functional).

Makefile `crack` target clones TheSpeedX/TBomb repository, however, in case its attempt will fail - darkestentropy/TBomb (my mirror repository of TheSpeedX/TBomb) will be cloned instead.

# Feedback
Want to contact me? Use this:
* E-mail: [entropial@protonmail.ch](mailto:entropial@protonmail.ch)
* ~~Telegram: [@DarkestEntropy](https://t.me/DarkestEntropy)~~ **I NO LONGER HAVE ACCESS**. Use e-mail.
