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
	@redocly bundle --lint -o build/open-hue.yaml

.PHONY: verify
verify: _check-redocly-installation
	@redocly lint

#
# Private targets
#

.PHONY: _check-redocly-installation
_check-redocly-installation:
	@command -v redocly >/dev/null 2>&1 || { echo >&2 "The Redocly CLI is not installed"; exit 1; }

