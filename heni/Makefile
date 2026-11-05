pdf: dreieckDE.pdf dreieckHU.pdf numbersDE.pdf numbersHU.pdf

dreieckDE.pdf: dreieckDE.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))
	pkill -1 mupdf

dreieckDE.aux: dreieckDE.tex
	pdflatex -file-line-error -interaction=nonstopmode $<

dreieckHU.pdf: dreieckHU.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))
	pkill -1 mupdf

dreieckHU.aux: dreieckHU.tex
	pdflatex -file-line-error -interaction=nonstopmode $<

numbersDE.pdf: numbersDE.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))
	pkill -1 mupdf

numbersDE.aux: numbersDE.tex
	pdflatex -file-line-error -interaction=nonstopmode $<

numbersHU.pdf: numbersHU.aux
	pdflatex -file-line-error -interaction=nonstopmode $(addsuffix .tex, $(basename $<))
	pkill -1 mupdf

numbersHU.aux: numbersHU.tex
	pdflatex -file-line-error -interaction=nonstopmode $<

clean:
	rm -f *.toc *.aux *.log *.out *.idx *.dvi

cleanall:
	rm -f *.toc *.pdf *.aux *.log *.out *.idx *.dvi

.PHONY: pdf clean cleanall
.SILENT: pdf

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
