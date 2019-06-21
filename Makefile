.PHONY: upload
.DEFAULT_GOAL := compile

DOCS = $(wildcard *.tex)
PDFS = $(wildcard *.pdf)

compile:
	@$(foreach d, $(DOCS), xelatex -halt-on-error $(d) ;)

build:
	@docker build -t compiled_docs .
	@docker run --name docs compiled_docs
	@$(foreach d, $(DOCS), docker cp docs:/cv/$(subst :.tex,.pdf,$(strip $(d))) . ;)

upload:
	@$(foreach f, $(PDFS), aws s3 cp --acl public-read "./$(f)" "s3://caian-org/$(f)" ;)

clean:
	@rm -rf *.pdf *.log *.aux
