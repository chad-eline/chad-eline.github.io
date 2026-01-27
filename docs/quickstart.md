# Quick Start

## Prerequisites

- Python 3.10 or higher
- [uv](https://github.com/astral-sh/uv) package manager

## Installation

### Install from GitHub

Install directly from the repository:

```bash
# Latest version
uv pip install git+https://github.com/chad-eline/python-template.git

# Specific version tag
uv pip install git+https://github.com/chad-eline/python-template.git@v1.0.0

# From a release wheel
uv pip install https://github.com/chad-eline/python-template/releases/download/v1.0.0/python_template-1.0.0-py3-none-any.whl
```

Add as a dependency in your `pyproject.toml`:

```toml
dependencies = [
    "python-template @ git+https://github.com/chad-eline/python-template.git@v1.0.0",
]
```

### Install for Development

1. Clone the repository:

   ```bash
   git clone https://github.com/chad-eline/python-template.git
   cd python-template
   ```

2. Create a virtual environment and install dependencies:

   ```bash
   make venv-create
   ```

3. Install pre-commit hooks (optional but recommended for local development):

   ```bash
   make pre-commit-install
   ```

4. Activate the virtual environment:

   ```bash
   source .venv/bin/activate
   ```

## Usage

Run the application:

```bash
make run
```

Or use the CLI entry point (after installation):

```bash
python-template
```

## Using as a Package

Import and use in your code:

```python
from python_template import Main, run

# Create an instance
app = Main()

# Or use the run function
run()
```

## Building

Build distributable packages:

```bash
make build
```

This creates wheel and source distribution files in `dist/`.

## Development

### Running Tests

```bash
make test
```

Run with coverage report:

```bash
make test-coverage
```

### Linting and Formatting

Code formatting and linting is handled by [ruff](https://github.com/astral-sh/ruff):

```bash
make lint
```

This runs:

- `ruff format` - Formats Python code
- `ruff check --fix` - Lints code and fixes fixable issues
- `prettier --write` - Formats markdown files

### Type Checking

Type checking is handled by [basedpyright](https://github.com/detachhead/basedpyright)
in strict mode:

```bash
make type-check
```

### Pre-commit Hooks

Pre-commit hooks automatically check code quality before commits. They run:

- Code formatting (ruff, prettier)
- Linting checks (ruff)
- Secrets detection
- File integrity checks

Install hooks:

```bash
make pre-commit-install
```

Run hooks manually:

```bash
make pre-commit-run
```

Update hook versions:

```bash
make pre-commit-update
```

### Available Commands

Run `make help` to see all available commands.
