ASCIIDOCS=$(wildcard *.asciidoc)
HTMLS=$(ASCIIDOCS:.asciidoc=.html)
all: $(HTMLS)
	@scripts/stat.sh
%.html: %.asciidoc
	asciidoc $<
.PHONY: clean
clean:
	rm *.html
