pdf: logik.pdf esGibtGenauEin.pdf dreiecke.pdf aufgaben.pdf

%.pdf: %.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))
	pkill -1 mupdf

%.aux: %.tex
	pdflatex -file-line-error -interaction=nonstopmode $<

clean:
	rm -f *.toc *.aux *.log *.out *.idx *.dvi

cleanall:
	rm -f *.toc *.pdf *.aux *.log *.out *.idx *.dvi

.PHONY: pdf clean cleanall
.SILENT: pdf

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
