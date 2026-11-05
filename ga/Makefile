TEX_FILES := $(wildcard *.tex)
PDF_FILES := $(TEX_FILES:.tex=.pdf)

.PHONY: pdf clean cleanall

pdf: $(PDF_FILES)

%.pdf: %.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex,$(basename $<))

%.aux: %.tex
	pdflatex -file-line-error -interaction=nonstopmode $<

clean:
	rm -f *.toc *.aux *.log *.out *.idx *.dvi *.nav *.snm *.vrb *.bbl *.blg

cleanall: clean
	rm -f $(PDF_FILES)

.SILENT: pdf

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
