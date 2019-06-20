.DEFAULT_GOAL := compile

DOCS = $(wildcard *.tex)
PDFS = $(wildcard *.pdf)

clean:
	rm -rf *.pdf *.log *.aux

compile:
	$(foreach d, $(DOCS), xelatex -halt-on-error $(d);)

update:
	$(foreach f, $(PDFS), \
		aws s3 cp --acl public-read \
		"./$(f)" "s3://bucket/$(f)")
