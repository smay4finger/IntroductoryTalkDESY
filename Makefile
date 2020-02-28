all: vortrag_en.pdf vortrag_de.pdf

%.pdf: %.tex FORCE_MAKE
	latexmk -norc -r LatexMk $<

clean:
	latexmk -norc -r LatexMk -C

continuous-de:
	latexmk -norc -r LatexMk -verbose -pvc vortrag_de

continuous-en:
	latexmk -norc -r LatexMk -verbose -pvc vortrag_en

.PHONY: FORCE_MAKE all clean view-de view-en
