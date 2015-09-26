ASCIIDOCS=$(wildcard */*.asciidoc) $(wildcard *.asciidoc)
HTMLS=$(ASCIIDOCS:.asciidoc=.html)
all: $(HTMLS)
	@./rmgoogleapi.sh
%.html: %.asciidoc
	asciidoctor $<
.PHONY: clean
clean:
	rm *.html
