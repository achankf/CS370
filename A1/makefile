IN= $(shell find -name "*.tex")
INCLUDE = $(shell find -name "*.texin")
OUT= $(IN:.tex=.pdf)

all: $(OUT)

%.pdf:%.tex $(INCLUDE) a1q4b.png
	pdflatex $<
	pdflatex $<

a1q4b.png: a1q4.m
	octave a1q4.m

.phony: clean
clean:
	rm -f *.{log,aux} a1q4b.eps a1q4b-eps-converted-to.pdf
cleanall:clean
	rm -f $(OUT)
