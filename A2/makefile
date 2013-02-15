IN= $(shell find -name "*.tex")
INCLUDE = $(shell find -name "*.texin")
OUT= $(IN:.tex=.pdf)
LOADPATH:=$(shell echo `pwd`/m):.:$(shell echo $$LOADPATH)

all: $(OUT)

$(OUT):$(IN) $(INCLUDE) m/*.m grapha.eps graphb.eps
	pdflatex $<
	pdflatex $<

grapha.eps graphb.eps : m/a2q4_eps.m4
	m4 $< | octave

.phony: clean
clean:
	rm -f *.log *.aux *.eps *eps-converted-to.pdf
cleanall:clean
	rm -f $(OUT)
