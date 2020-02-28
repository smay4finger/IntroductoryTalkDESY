LATEXMK_ARGS = -norc -r LatexMk

ifdef VERBOSE
LATEXMK_ARGS += -verbose
endif

all: vortrag_en.pdf vortrag_de.pdf

%.pdf: %.tex FORCE_MAKE
	latexmk $(LATEXMK_ARGS) $<

clean:
	latexmk $(LATEXMK_ARGS) -C

continuous-de:
	latexmk $(LATEXMK_ARGS) -verbose -pvc vortrag_de

continuous-en:
	latexmk $(LATEXMK_ARGS) -verbose -pvc vortrag_en

.PHONY: FORCE_MAKE all clean view-de view-en
