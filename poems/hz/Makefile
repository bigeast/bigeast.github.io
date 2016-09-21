ASCIIDOCS=$(wildcard *.asciidoc)
all: $(ASCIIDOCS:.asciidoc=.html)
	@./stat.sh
%.html: %.asciidoc
	asciidoctor $<
