PWD = $(shell pwd)
workdir = $(PWD)/.work
tbombdir = $(PWD)/TBomb
crackdir = $(PWD)/Crack
deobfdir = $(PWD)/Deobfuscate

getbomb:
	if [ ! -d "$(tbombdir)" ]; then \
        git clone git://github.com/thespeedx/tbomb.git "$(tbombdir)" || \
        git clone git://github.com/darkestentropy/tbomb.git "$(tbombdir)"; \
	fi

clean:
	rm -rf "$(workdir)"
	rm -rf "$(tbombdir)"

mkenv: getbomb
	mkdir -p "$(workdir)"
	cp "$(tbombdir)/bomber.py" "$(workdir)/bomber.py.source"

crack: mkenv
	python "$(crackdir)/decompress_zlib.py" $(workdir)
	python "$(crackdir)/debytize.py" $(workdir)
	python "$(crackdir)/attach_cracker.py" $(workdir) $(crackdir)

	python "$(workdir)/bomber.py.cracker_attached" > "$(workdir)/bomber.py.cracked"
	cp "$(workdir)/bomber.py.cracked" "$(workdir)/bomber.py.source"
	python "$(crackdir)/decompress_lzma.py" $(workdir)
	mv "$(workdir)/bomber.py.decompressed" "$(workdir)/bomber.py.cracked"
	mv "$(workdir)/bomber.py.cracked" "$(PWD)/bomber.py.cracked"

prettify: crack
	autopep8 --in-place -aaa "$(PWD)/bomber.py.cracked"
