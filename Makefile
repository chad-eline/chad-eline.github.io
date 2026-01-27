SHELL = /bin/bash

help: Makefile
	@echo
	@echo "Choose a command to run:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

## clean: Remove all build, test, coverage and Python artifacts
clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
	find . -name '*log' -exec rm -fr {} +
	rm -rf build/ dist/ *.egg-info src/*.egg-info .eggs/
	rm -rf .coverage htmlcov/ .pytest_cache/

## doc-lint: Format markdown files with prettier
doc-lint:
	prettier --write "**/*.md"

## doc-serve: Serve the documentation using mkdocs
doc-serve:
	mkdocs serve

## lint: Format and check all Python files with ruff (uses pyproject.toml config)
lint: doc-lint
	uv run ruff format src tests
	uv run ruff check --fix src tests

## type-check: Type check the codebase with basedpyright
type-check:
	uv run basedpyright src

## build: Build the package
build: clean
	uv build

## run: Run the application
run:
	uv run python -m python_template.main

## test: Run the test cases using pytest
test:
	uv run pytest tests

## test-coverage: Run tests with coverage report
test-coverage:
	uv run pytest tests --cov=src/python_template --cov-report=term-missing --cov-report=html

## test-and-lint: Lint and test the codebase
test-and-lint: lint test-coverage

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
