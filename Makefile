#
# Usage:
#		- make setup 	(Install or Update the Redocly CLI)
#		- make verify (Validate that the specification is valid)
#

setup:
	@command -v npm >/dev/null 2>&1 || { echo >&2 "NPM is required in order to install the Redocly CLI"; exit 1; }
	@echo "Installing the Redocly CLI..."
	@npm i -g @redocly/cli@latest

verify: verify.redocly
	@redocly lint

verify.redocly:
	@command -v redocly >/dev/null 2>&1 || { echo >&2 "The Redocly CLI is not installed"; exit 1; }

