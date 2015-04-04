ASCIIDOCS=$(wildcard */*.asciidoc)
HTMLS=$(ASCIIDOCS:.asciidoc=.html)
all: $(HTMLS)
	@./stat.sh
%.html: %.asciidoc
	asciidoc $<
.PHONY: clean
clean:
	rm *.html
