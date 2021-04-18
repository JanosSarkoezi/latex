# Makefile to create PDF documents from LaTeX-Files
# Needed software packages: pdflatex, rubber
# License: No copyright, just do what the heck you want with it

all: pdf clean

pdf:
	for file in $$(grep -l \begin{document} *.tex | cut -d \. -f 1) ; do make $$file.pdf ; done

%.pdf: %.tex
#	echo $<
	pdflatex -file-line-error -interaction=nonstopmode $<
	pdflatex -file-line-error -interaction=nonstopmode $<
	pkill -1 mupdf

clean:
	rm -f *.toc *.aux *.log *.out *.idx *.dvi

cleanall:
	rm -f *.toc *.pdf *.aux *.log *.out *.idx *.dvi

.PHONY: all pdf clean cleanall
.SILENT: pdf

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
