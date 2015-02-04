TXTS=$(wildcard *.txt)
HTMLS=$(TXTS:.txt=.html)
#HTMLS=$(patsubst %.txt,%.html,$(wildcard *.txt))
all: $(HTMLS)
%.html: %.txt
	asciidoc $<
