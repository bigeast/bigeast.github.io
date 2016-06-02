ASCIIDOCS=$(wildcard *.asciidoc)
all: $(ASCIIDOCS:.asciidoc=.html)

%.html: %.asciidoc
	asciidoctor $<
