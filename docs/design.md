# Architecture Design

## Overview

This Python template project provides a modern starting point for new Python
projects. It includes a complete development toolchain with testing, linting,
and documentation support.

## Project Structure

```text
python-template/
├── src/
│   └── python_template/     # Main package
│       ├── __init__.py      # Package initialization and exports
│       ├── main.py          # Application entry point
│       └── py.typed         # PEP 561 type marker
├── tests/                   # Test suite
│   └── test_main.py         # Tests for main module
├── docs/                    # Documentation
│   ├── design.md            # Architecture documentation
│   ├── quickstart.md        # Getting started guide
│   └── testing.md           # Testing guide
├── pyproject.toml           # Project configuration and dependencies
├── Makefile                 # Development commands
└── readme.md                # Project overview
```

## Technology Stack

| Purpose                   | Tool         | Why                                        |
| ------------------------- | ------------ | ------------------------------------------ |
| **Python & dependencies** | uv           | Fast, unified package manager and runner   |
| **Linting & formatting**  | ruff         | One tool, Rust-fast, replaces black/flake8 |
| **Testing**               | pytest       | Industry-standard testing framework        |
| **Type checking**         | basedpyright | Faster, better defaults than mypy          |
| **Markdown formatting**   | prettier     | Code and markdown formatter                |
| **Task automation**       | make         | Ubiquitous task runner                     |
| **Pre-commit hooks**      | pre-commit   | Local code quality enforcement             |
| **Documentation**         | mkdocs       | Static site generator for documentation    |
| **Build backend**         | hatchling    | Modern, standards-based build system       |

## Configuration

All project configuration is centralized in `pyproject.toml`:

- Project metadata (name, version, description, classifiers)
- Dependencies and optional dependency groups
- Entry points for CLI commands
- Build system configuration (hatchling)
- Tool configurations (pytest, ruff, basedpyright)

## Entry Points

The project defines a CLI entry point `python-template` that invokes the `run()`
function from the `python_template` package.

## Building the Package

Build distributable packages (wheel and sdist):

```bash
make build
```

This creates distribution files in the `dist/` directory that can be uploaded
to PyPI or installed directly.
