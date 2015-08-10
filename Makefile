.PHONY: lemon all

all: lemon

lemon: bin/lemon bin/lempar.c

bin/lempar.c: lempar.c
	cp lempar.c bin/

bin/lemon: lemon.c
	mkdir -p bin
	gcc -O2 -o bin/lemon lemon.c

lemon.c:
	wget --quiet -O lemon.c 'http://www.sqlite.org/src/raw/tool/lemon.c?name=b9109f59b57e7b6f101c4fe644c8361ba6dee969'

lempar.c:
	wget --quiet -O lempar.c 'http://www.sqlite.org/src/raw/tool/lempar.c?name=01ca97f87610d1dac6d8cd96ab109ab1130e76dc'
