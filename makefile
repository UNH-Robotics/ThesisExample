LATEXFILE:=dissertation

all: *.tex
	latex $(LATEXFILE).tex </dev/null
	bibtex $(LATEXFILE)
	latex $(LATEXFILE).tex </dev/null
	latex $(LATEXFILE).tex </dev/null
	dvipdf $(LATEXFILE).dvi

clean:
	rm -f *.aux *.pdf *.ps *.log *.bbl *.blg *.dvi *.lof *.lot *.toc
