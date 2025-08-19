all:
	xelatex main
	makeindex main
	makeglossaries main
	xelatex main
	xelatex main
	mv main.pdf "The Unclassed System Core Rulebook.pdf"

clean:
	rm *.acn
	rm *.acr
	rm *.alg
	rm *.aux
	rm *.glg
	rm *.glo
	rm *.gls
	rm *.idx
	rm *.ilg
	rm *.ind
	rm *.ist
	rm *.log
	rm *.out
	rm *.pdf
	rm *.toc
