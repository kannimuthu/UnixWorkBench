all: README.md

README.md: game.sh
	touch README.md
	echo "# Coursera Project Game" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l game.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md