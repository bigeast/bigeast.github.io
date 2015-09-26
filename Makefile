ASCIIDOCS=$(wildcard */*.asciidoc) $(wildcard *.asciidoc)
HTMLS=$(ASCIIDOCS:.asciidoc=.html)
all: $(HTMLS)
	@./stat.sh
	@./rmgoogleapi.sh
%.html: %.asciidoc
	asciidoctor $<
.PHONY: clean
clean:
	rm *.html
