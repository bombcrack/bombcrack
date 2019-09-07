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

# FAQ
_I think it's not really FAQ_, 'cause nobody has yet asked most of these questions. I look forward for those to be asked, though, so here are the answers.

### Why not including TBomb repository content?
First of - I respect TBomb creator, as they kept going all adequate on our conversations (issues, e-mail, Telegram, etc.)

Second of - including other project sources is just impractical and inefficient rather than including them on demand. Moreover, Makefile script is made to fallback at my mirror of TBomb repo in case it will be unavailable.

### What's so big deal about that TBomb? What made you crack it?
Before reading further explanations check out issues #22 and issue #19.

_.  .  ._

Are you done yet? Alright, I'll proceed.
I don't like *binary* and *obfuscated* code in places like GitHub. Of course, it's just a repository hosting service, nobody ever has to create open-source stuff here. **BUT** - it's licensed under MIT license (just in case TheSpeedX switches to another one and you'll no longer see MIT license at their repository - check out snapshots from my mirror repo.), that means I'm free to _modify, redistribute or **even sell**_ this software. I did not do last two possible actions that I could've done, though. And technically I didn't even do first - it's all made automatically on end-user machine.

### What if people will use this cracked code to create their own bombs without any protect lists or anything?
That would be a logical consequence to *making a client* (not server) *application like this*. Blame TBomb authors, yeah. TBomb is itself a quite harmfull software, so if I was its authors - I'd create web app.

### What will you do next?
So, there are few possible scenarios of all this mess happening.
1. TBomb is going open-source.
   In this case, I will archive this repository as well as my mirror repo, and will just live my life without interfering with TBomb. *Until they make it closed client app again*.
2. TBomb gets more powerful obfuscation/encoding **without getting license that allows me to modify it**.
   There will always be some ways to expose *at least* obfuscated code. I'll keep on doing my job - trying to bring up
3. TBomb gets more restrictive license.
   What do you think? Of course, I'd give up on this project further development and adapting it to next versions. _Note - **next** versions. Versions with MIT license will be unaffected as long as they are in my mirror repo._
4. Things are not changing.
   Then my plans are not chaning, too.

# Feedback
Want to contact me? Use this:
* E-mail: [entropial@protonmail.ch](mailto:entropial@protonmail.ch)
* Telegram: [@DarkestEntropy](https://t.me/DarkestEntropy)

_That's all I can provide. Sorry!_
