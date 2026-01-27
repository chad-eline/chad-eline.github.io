SHELL = /bin/bash

help: Makefile
	@echo
	@echo "Choose a command to run:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

## clean: Remove build artifacts
clean:
	rm -rf site/
	find . -name '*~' -exec rm -f {} +

## doc-lint: Format markdown files with prettier
doc-lint:
	npx prettier --write "**/*.md"

## doc-serve: Serve the documentation locally
doc-serve:
	uv run mkdocs serve --livereload

## doc-build: Build the documentation site
doc-build:
	uv run mkdocs build --strict

## doc-deploy: Deploy documentation to GitHub Pages
doc-deploy:
	uv run mkdocs gh-deploy --force

## uv: Install and manage uv package manager
uv: uv
	@command -v uv >/dev/null 2>&1 || { \
		echo "Installing uv package manager..."; \
		curl -LsSf https://astral.sh/uv/install.sh | sh; \
	}
	@echo "uv is installed at: $$(command -v uv)"

## venv-create: Create a virtual environment and install dependencies using uv
venv-create: uv
	uv venv
	uv pip install -e ".[dev,docs]"

## venv-delete: Delete the virtual environment
venv-delete:
	rm -rf .venv

## venv-lock: Generate uv.lock from pyproject.toml
venv-lock:
	uv lock

## venv-sync: Sync dependencies from uv.lock
venv-sync:
	uv sync --all-extras

## venv-upgrade: Update dependencies in the virtual environment
venv-upgrade:
	uv lock --upgrade
	uv sync --all-extras

## pre-commit-install: Install pre-commit hooks
pre-commit-install:
	uv run pre-commit install

## pre-commit-run: Run pre-commit hooks on all files
pre-commit-run:
	uv run pre-commit run --all-files

## pre-commit-update: Update pre-commit hook versions
pre-commit-update:
	uv run pre-commit autoupdate
