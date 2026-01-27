# Testing

## Overview

This project uses [pytest](https://docs.pytest.org/) as the testing framework.
Tests are located in the `tests/` directory.

## Running Tests

### Basic Test Run

```bash
make test
```

Or directly with uv:

```bash
uv run pytest tests
```

### Verbose Output

```bash
uv run pytest tests -v
```

### Run Specific Test File

```bash
uv run pytest tests/test_main.py
```

### Run Specific Test Function

```bash
uv run pytest tests/test_main.py::test_main_init
```

## Test Coverage

Run tests with coverage report:

```bash
make test-coverage
```

This generates:

- Terminal output with missing line numbers
- HTML report in `htmlcov/` directory

## Writing Tests

### Test File Naming

- Test files should be named `test_<module>.py`
- Test functions should be named `test_<description>`

### Example Test

```python
"""Tests for example module."""

from example import ExampleClass


def test_example_function() -> None:
    """Test description of what is being tested."""
    result = ExampleClass()
    assert result is not None
```

### Using Fixtures

pytest fixtures provide reusable test setup:

```python
import pytest


@pytest.fixture
def sample_data() -> dict:
    """Provide sample data for tests."""
    return {"key": "value"}


def test_with_fixture(sample_data) -> None:
    """Test using the sample_data fixture."""
    assert sample_data["key"] == "value"
```

### Capturing Output

Use the `capsys` fixture to capture stdout/stderr:

```python
def test_output(capsys) -> None:
    """Test that output is correct."""
    print("Hello")
    captured = capsys.readouterr()
    assert "Hello" in captured.out
```

## Test Configuration

pytest is configured in `pyproject.toml`:

```toml
[tool.pytest.ini_options]
pythonpath = ["src"]
testpaths = ["tests"]
```

- `pythonpath`: Adds src/ to the Python path for imports
- `testpaths`: Default directories to search for tests
