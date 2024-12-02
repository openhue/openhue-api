.PHONY: help
help:
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "make \033[36m%-10s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## Setup the dev environment
	@command -v npm >/dev/null 2>&1 || { echo >&2 "NPM is required in order to install the Redocly CLI"; exit 1; }
	@echo "Installing the Redocly CLI..."
	@npm i -g @redocly/cli@latest

.PHONY: build
build: _check-redocly-installation ## Bundle the OpenAPI single-file specification in the ./build folder
	@echo "Building the OpenAPI single-file specification..."
	@redocly bundle src/main.yaml -o build/openhue.yaml

.PHONY: verify
verify: _check-redocly-installation ## Check that the specification is valid
	@redocly lint

.PHONY: docs
docs: _check-redocly-installation ## Generate the static HTML documentation in the ./build folder
	@mkdir -p build/images
	@cp -R ./docs/images ./build
	@redocly build-docs -o build/index.html

.PHONY: clean ## Remove the ./build folder
clean:
	@rm -rf ./build

#
# Private targets
#

.PHONY: _check-redocly-installation
_check-redocly-installation:
	@command -v redocly >/dev/null 2>&1 || { echo >&2 "The Redocly CLI is not installed"; exit 1; }

