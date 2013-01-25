IN= $(shell find -name "*.tex")
INCLUDE = $(shell find -name "*.texin")
OUT= $(IN:.tex=.pdf)

all: $(OUT)
%.pdf:%.tex $(INCLUDE)
	pdflatex $<
	pdflatex $<

.phony: clean
clean:
	rm -f *.{log,aux}
cleanall:clean
	rm -f $(OUT)
