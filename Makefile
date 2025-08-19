all: version
	xelatex main
	makeindex main
	makeglossaries main
	xelatex main
	xelatex main
	mv main.pdf "The Unclassed System Core Rulebook.pdf"

version:
	-mkdir inputs
	if [[ ! -z "${VERSION_STRING}" ]]; then echo ${VERSION_STRING} > inputs/version.txt; fi

clean: clean-version
	-rm *.acn
	-rm *.acr
	-rm *.alg
	-rm *.aux
	-rm *.glg
	-rm *.glo
	-rm *.gls
	-rm *.idx
	-rm *.ilg
	-rm *.ind
	-rm *.ist
	-rm *.log
	-rm *.out
	-rm *.pdf
	-rm *.toc

clean-version:
	-rm inputs/version.txt
