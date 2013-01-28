IN= $(shell find -name "*.tex")
INCLUDE = $(shell find -name "*.texin")
OUT= $(IN:.tex=.pdf)
LOADPATH:=$(shell echo `pwd`/m):.:$(shell echo $$LOADPATH)

all: $(OUT)

%.pdf:%.tex $(INCLUDE) a1q4b.eps a1q6a.eps a1q6b.eps a1q6c.eps m/*.m
	pdflatex $<
	pdflatex $<

a1q4b.eps: m/a1q4.m
	octave $<

a1q6a.eps a1q6b.eps a1q6c.eps: m/a1q6_print.m4
	m4 $< | octave

.phony: clean
clean:
	rm -f *.{log,aux,eps} a1q4b-eps-converted-to.pdf
cleanall:clean
	rm -f $(OUT)
