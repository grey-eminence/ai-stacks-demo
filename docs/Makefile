# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

cp ../microservices/edge_video_analytics_microservice/README.md "$(SOURCEDIR)"/guide/microservices/edge_video_analytics_microservice/README.md
cp ../microservices/edge_video_analytics_microservice/GET_STARTED.md "$(SOURCEDIR)"/guide\microservices/edge_video_analytics_microservice/GET_STARTED.md
cp ../microservices/edge_video_analytics_microservice/OPENAPI.yml "$(SOURCEDIR)"/guide/microservices/edge_video_analytics_microservice/OPENAPI.yml

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

cp _static/redirect.html "$(BUILDDIR)"/html/index.html