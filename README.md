# BombCrack
A cracker for the `bomber.py` obfuscated Python script from TheSpeedX/TBomb (also check issue [#22](https://github.com/TheSpeedX/TBomb/issues/22).)

## Project is frozen.
Finally, [TBomb is being open-sourced](https://github.com/TheSpeedX/TBomb/issues/41)!
That means BombCrack has really no use from now on, and will not be worked on until TBomb authors decide to obfuscate its code again, which we all hope will never happen in future.

Although TBomb is no longer obfuscated, I've restored a historical copy of how it looked like before
it went open-source: check `historical` branch @ darkestentropy/TBomb.
Script will clone TBomb sources from `historical` branch, but due to past limitations it still
fails to crack it *without [scpketer's patch](https://github.com/darkestentropy/bombcrack/issues/4)*.

Thanks to everyone who helped me out with BombCrack and supported me in any way:
* @scpketer - the person who gave me an inspiration.
* @KnightSec-Official - the person who supported me in development process.
* [All the stargazers of this repository](https://github.com/darkestentropy/bombcrack/stargazers) - you're just as valuable!

See you at TBomb repository - I'm sure we'll do great job in contributing!

# Usage
Just a few commands and you get somewhat cracked (script is mostly `eval` and twice compressed - with `zlib` and `lzma` respectively.)

## Requirements
You'll need `autopep8` for cracked source beautifying
(you can install it with `pip`- see instructions below),
`git` and `make`, which you will have to install manually with your system package manager (these packages are usually shipped in base development sets such as ArchLinux's `base-devel`.)

## Instructions
_So, how do I shoot web?_

### \*nix users
```bash
$ git clone https://github.com/DarkestEntropy/BombCrack.git
$ cd BombCrack
$ pip install -r requirements.txt # Note - you may possibly need to run this as root or append --user flag
$ make clean crack prettify # Prettifying may take some time. If you don't want it - remove 'prettify' target
```

### Windows users
```bat
> git clone https://github.com/DarkestEntropy/BombCrack.git
> cd BombCrack
> pip install -r requirements.txt
> make clean
> make getbomb
> make mkenv
> make crack
> rem Prettifying isn't neccessary, but would certainly make cracked source cleaner.
> make prettify
```

There you go, a cracked TBomb is at your hand (just next to the Makefile, named `bomber.py.cracked` - try running it with Python - you'll see it's fully functional).

Makefile `crack` target clones darkestentropy/TBomb (my mirror repository of TheSpeedX/TBomb)
now due to License modifications made by TBomb authors.

## De-mirroring
BombCrack uses [mirrored snapshot of TBomb](https://github.com/DarkestEntropy/TBomb)
due to strict license of original TBomb, however, cracking algorithm should work
on a future versions of TBomb as they're encoded the same way past versions were encoded.

To do so, open Makefile (\*nix users) or Make.bat (Windows users), find target `getbomb` and
modify cloning URL.

# Feedback
Want to contact me? Use this:
* E-mail: [entropial@protonmail.ch](mailto:entropial@protonmail.ch)
* ~~Telegram: [@DarkestEntropy](https://t.me/DarkestEntropy)~~ **I NO LONGER HAVE ACCESS**. Use e-mail.
