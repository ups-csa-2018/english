LATEXMK=latexmk

MAIN=presentation-bitcoin
SOURCES=$(MAIN).tex

all: $(MAIN).pdf

$(MAIN).pdf: build/$(MAIN).pdf

build/$(MAIN).pdf: $(SOURCES)
	$(LATEXMK) $(MAIN)

clean:
	rm -r build

.PHONY: clean all
