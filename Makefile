
ECONOMICS_WP_DIR := economics-whitepaper

TECHNICAL_WP_DIR := technical-whitepaper

PDFLATEX := pdflatex -interaction=batchmode

.PHONY: economics technical

all: economics technical

economics: economics.pdf

economics.pdf: $(shell find ${ECONOMICS_WP_DIR} -name '*.tex' -or -name '*.bib')
	@cd ${ECONOMICS_WP_DIR} \
		&& ${PDFLATEX} main.tex \
		&& mv main.pdf ../economics.pdf

technical: technical.pdf

technical.pdf: $(shell find ${TECHNICAL_WP_DIR} -name '*.tex' -or -name '*.bib')
	@cd ${TECHNICAL_WP_DIR} \
		&& ${PDFLATEX} main.tex \
		&& mv main.pdf ../technical.pdf
