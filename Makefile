PROBLEMS:=${shell ls *.tex}

TARGET_FORMAT=pdf

.PHONY: all

all:			${PROBLEMS:.tex=.${TARGET_FORMAT}}

%.pdf:			%.tex force
				latexmk -pdf $<

force:			;

.PHONY: clean

clean:
			latexmk -C
			rm -f *.snm *.nav *.out *.fdb_latexmk *.vrb *.table *.gnuplot \
			*-blx.bib *.mtc* *.maf *.bbl *.run.xml
