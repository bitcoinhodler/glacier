# Builds the site locally so that you can preview it without having to push to Github
.PHONY: docs
docs:
	@docker run -it --rm --name docs -v "$(shell pwd)"/docs:/usr/src/app -p 4000:4000 starefossen/github-pages:172

# Runs a spell checker to make sure your site looks nifty without typos
.PHONY: spell-check
spell-check: dockerfiles/bin/.spellcheck
	@docker run --rm -t -v "$(shell pwd)"/docs:/src spellcheck

################################################################################
#	Build Docker images
################################################################################

dockerfiles/bin/.spellcheck: dockerfiles/spellcheck/Dockerfile dockerfiles/spellcheck/.spelling
	@docker build -t spellcheck -f $< $(<D)
	@touch $@


# $<     - the first prerequisite
# $(<D)  - directory part of the first prerequisite
# $@     - the target
