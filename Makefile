.DEFAULT_GOAL := compile

DOCS = $(wildcard *.tex)
PDFS = $(wildcard *.pdf)

compile:
	$(foreach d, $(DOCS), xelatex $(d);)

update:
	$(foreach f, $(PDFS), \
		aws s3 cp --acl public-read \
		"./$(f)" "s3://bucket/$(f)")
