.PHONY: docs
docs:
	@docker run -it --rm -v "$(shell pwd)"/docs:/usr/src/app -p 8000:4000 starefossen/github-pages:147
