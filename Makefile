all:
	xelatex main
	makeindex main
	makeglossaries main
	xelatex main
	xelatex main
	mv main.pdf "The Unclassed System Core Rulebook.pdf"

clean:
	rm *.aux
	rm *.log
	rm *.out
	rm *.pdf
	rm *.toc
	rm *.idx
