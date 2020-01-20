all: ccsn.pdf


OUTS= ccsn #
PLOTS=$(addsuffix .pdf, $(addprefix plots/, $(OUTS)))


ccsn.pdf: ccsn.tex introduction.tex methods.tex noisestudy.tex discussion.tex biblio.bib
	pdflatex ccsn.tex
	bibtex ccsn
	pdflatex ccsn.tex
	pdflatex ccsn.tex


