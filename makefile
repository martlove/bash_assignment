all: README title date lines

README:
	touch README.md

title: README.md
	echo "# Peer-graded Assignment of Liubov Chagaeva" > README.md

date: README.md
	echo "The make file was run: **`date +%d\ %B\ %H\:%M`**" >> README.md

lines: guessinggame.sh README.md
	echo "The number of lines of code contained in guessinggame.sh is \``cat guessinggame.sh | wc -l`\`" >> README.md
