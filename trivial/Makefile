pdf: trivial.pdf

trivial.pdf: trivial.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))
	pkill -1 mupdf

trivial.aux: trivial.blg
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))

trivial.blg: trivial.tex
	pdflatex -file-line-error -interaction=nonstopmode $<
	bibtex $(basename $<)

watch:
	./check

clean:
	rm -f *.toc *.aux *.log *.out *.idx *.dvi *.bbl *.blg *.toc

cleanall:
	rm -f *.toc *.aux *.log *.out *.idx *.dvi *.bbl *.blg *.toc *.pdf

.PHONY: pdf clean cleanall
.SILENT: pdf

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
