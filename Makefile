# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = $PWD
BUILDDIR      = _build
DOCKERIMAGE	  = texlive:plantuml
DOCKERSRC     =/docs
APTCACHER     =apt_cacher_ng
# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: local-pages
.ONESHELL:
local-pages:
	@docker run --rm -v ${PWD}:${DOCKERSRC} ${DOCKERIMAGE} ${SPHINXBUILD} -M html ${DOCKERSRC} ${BUILDDIR}

.PHONY: gh-pages
.ONESHELL:
gh-pages:
	@rm -rf /tmp/gh-pages
	@cp -r $(BUILDDIR)/html /tmp/gh-pages
	@git checkout gh-pages
	@rm -rf *
	@cp -r /tmp/gh-pages/* .
	@touch .nojekyll	

.PHONY: apt_cacher_ip
apt_cacher_ip:
	@docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${APTCACHER}

.PHONY: cleanupdocker
cleanupdocker:
	@docker ps -a -f status=exited -q | xargs --no-run-if-empty docker rm
	@docker images --filter "dangling=true" -q | xargs --no-run-if-empty docker rmi
