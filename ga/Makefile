# Makefile:
TEX = pdflatex
TEXFLAGS = -file-line-error -interaction=nonstopmode
TEXS = $(wildcard *.tex)
PDFS = $(patsubst %.tex,%.pdf, $(TEXS))

all: $(PDFS)

%.pdf: %.tex
	 $(TEX) $(TEXFLAGS) $<
	 $(TEX) $(TEXFLAGS) $<

clean:
	rm *.aux *.log

cleanall:
	rm *.aux *.log *.pdf
