.DEFAULT_GOAL := compile

LATEX_DOCS = $(wildcard locales/*.tex)
COMPILED_PDFS = $(wildcard *.pdf)

DOCKER_IMAGE_TAGGED = compiled-docs:latest
DOCKER_TMP_CONTAINER = compiled-cv

pt: LATEX_DOCS=locales/pt_BR.tex
pt: compile

en: LATEX_DOCS=locales/en_US.tex
en: compile


compile:
	@$(foreach d, $(LATEX_DOCS), \
		lualatex \
		-halt-on-error \
		-jobname "cv-$(basename $(notdir $(d)))" \
		"\input{$(d)} \input{cv.tex}" ;)


build-image:
	@docker build -t $(DOCKER_IMAGE_TAGGED) .


build-docs:
	@docker run --name $(DOCKER_TMP_CONTAINER) $(DOCKER_IMAGE_TAGGED)
	@$(foreach d, $(LATEX_DOCS), \
		docker cp \
			"$(DOCKER_TMP_CONTAINER):/home/turing/cv/cv-$(basename $(notdir $(d))).pdf" . \
		;)


update-docs:
	@$(foreach f, $(COMPILED_PDFS), \
		aws s3 cp --acl public-read "./$(f)" "s3://caian-org/$(f)" ;)


clean:
	@rm -rf *.pdf *.log *.aux *.out
