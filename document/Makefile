.DEFAULT_GOAL := compile

DOCS = $(wildcard locales/*.tex)
PDFS = $(wildcard *.pdf)

pt: DOCS=locales/pt_BR.tex
pt: compile

en: DOCS=locales/en_US.tex
en: compile

compile:
	@$(foreach d, $(DOCS), \
		lualatex \
		-halt-on-error \
		-jobname "cv-$(basename $(notdir $(d)))" \
		"\input{$(d)} \input{cv.tex}" ;)

build:
	@docker build -t compiled-docs .
	@docker run --name docs compiled-docs
	@$(foreach d, $(DOCS), \
		docker cp "docs:/home/turing/cv/cv-$(basename $(notdir $(d))).pdf" . ;)

update:
	@$(foreach f, $(PDFS), \
		aws s3 cp --acl public-read "./$(f)" "s3://caian-org/$(f)" ;)

clean:
	@rm -rf *.pdf *.log *.aux *.out
