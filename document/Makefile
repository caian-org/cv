.DEFAULT_GOAL := compile

LATEX_DOCS = $(wildcard *.tex)
COMPILED_PDFS = $(wildcard *.pdf)

AWS_S3_BUCKET = caian-org
DOCKER_IMAGE_TAGGED = compiled-docs:latest
DOCKER_TMP_CONTAINER = compiled-cv


compile:
	@$(foreach d, $(LATEX_DOCS), lualatex -halt-on-error "$(d)" ;)


compile-from-image:
	@cd .. && docker build -t $(DOCKER_IMAGE_TAGGED) .
	@docker run --name $(DOCKER_TMP_CONTAINER) $(DOCKER_IMAGE_TAGGED)
	@$(foreach d, $(LATEX_DOCS), \
		docker cp \
			"$(DOCKER_TMP_CONTAINER):/home/turing/$(basename $(notdir $(d))).pdf" . \
		;)
	@docker rm $(DOCKER_TMP_CONTAINER)


upload:
	@$(foreach f, $(COMPILED_PDFS), \
		aws s3 cp --acl public-read "./$(f)" "s3://$(AWS_S3_BUCKET)/$(f)" ;)


clean:
	@rm -rf *.pdf *.log *.aux *.out
