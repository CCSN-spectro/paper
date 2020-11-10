OUTS= ccsn #
PLOTS=$(addsuffix .pdf, $(addprefix plots/, $(OUTS)))

all: ccsn.pdf

ccsn.pdf: ccsn.tex introduction.tex simulations.tex methods.tex results.tex conclusion.tex biblio.bib
	pdflatex ccsn.tex
	bibtex ccsn
	pdflatex ccsn.tex
	pdflatex ccsn.tex

clean: rm ccsn.pdf *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof
