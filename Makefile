#
# Usage:
#		- make setup 	(Install or Update the Redocly CLI)
#		- make verify (Validate that the specification is valid)
#		- make build (Bundle the specification into a single YAML file)
#

.PHONY: setup
setup:
	@command -v npm >/dev/null 2>&1 || { echo >&2 "NPM is required in order to install the Redocly CLI"; exit 1; }
	@echo "Installing the Redocly CLI..."
	@npm i -g @redocly/cli@latest

.PHONY: build
build: _check-redocly-installation
	@echo "Building the OpenAPI single-file specification..."
	@redocly bundle --lint -o build/openhue.yaml

.PHONY: verify
verify: _check-redocly-installation
	@redocly lint

.PHONY: docs
docs: _check-redocly-installation
	@mkdir -p build/images
	@cp -R ./docs/images ./build
	@redocly build-docs -o build/index.html

.PHONY: clean
clean:
	@rm -rf ./build

#
# Private targets
#

.PHONY: _check-redocly-installation
_check-redocly-installation:
	@command -v redocly >/dev/null 2>&1 || { echo >&2 "The Redocly CLI is not installed"; exit 1; }

