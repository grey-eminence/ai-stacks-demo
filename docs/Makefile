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


# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile

# Copy documentation files from microservices folders to documentation
	cp ../microservices/edge_video_analytics_microservice/README.md "$(SOURCEDIR)"/guide/microservices/edge_video_analytics_microservice/README.md
	cp ../microservices/edge_video_analytics_microservice/GET_STARTED.md "$(SOURCEDIR)"/guide/microservices/edge_video_analytics_microservice/GET_STARTED.md
	cp ../microservices/edge_video_analytics_microservice/OPENAPI.yml "$(SOURCEDIR)"/guide/microservices/edge_video_analytics_microservice/OPENAPI.yml

	cp ../microservices/data_store_microservice/README.md "$(SOURCEDIR)"/guide/microservices/data_store_microservice/README.md
	cp ../microservices/data_store_microservice/GET_STARTED.md "$(SOURCEDIR)"/guide/microservices/data_store_microservice/GET_STARTED.md
	cp ../microservices/data_store_microservice/OPENAPI.yml "$(SOURCEDIR)"/guide/microservices/data_store_microservice/OPENAPI.yml

	cp ../microservices/model_registry_microservice/README.md "$(SOURCEDIR)"/guide/microservices/model_registry_microservice/README.md
	cp ../microservices/model_registry_microservice/GET_STARTED.md "$(SOURCEDIR)"/guide/microservices/model_registry_microservice/GET_STARTED.md
	cp ../microservices/model_registry_microservice/OPENAPI.yml "$(SOURCEDIR)"/guide/microservices/model_registry_microservice/OPENAPI.yml

# Copy documentation files from sample applications folders to documentation
	cp ../sample_applications/automated_self_checkout/README.md "$(SOURCEDIR)"/guide/sample_applications/automated_self_checkout/README.md
	cp ../sample_applications/automated_self_checkout/GET_STARTED.md "$(SOURCEDIR)"/guide/sample_applications/automated_self_checkout/GET_STARTED.md

	cp ../sample_applications/pallet_defect_detection/README.md "$(SOURCEDIR)"/guide/sample_applications/pallet_defect_detection/README.md
	cp ../sample_applications/pallet_defect_detection/GET_STARTED.md "$(SOURCEDIR)"/guide/sample_applications/pallet_defect_detection/GET_STARTED.md

	cp ../sample_applications/search_image_by_image/README.md "$(SOURCEDIR)"/guide/sample_applications/search_image_by_image/README.md
	cp ../sample_applications/search_image_by_image/GET_STARTED.md "$(SOURCEDIR)"/guide/sample_applications/search_image_by_image/GET_STARTED.md

	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

	cp _static/redirect.html "$(BUILDDIR)"/html/index.html