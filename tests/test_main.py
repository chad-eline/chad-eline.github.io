"""Tests for python_template.main module."""

from python_template import Main, run


def test_main_init(capsys) -> None:
    """Test Main class initialization."""
    Main()
    captured = capsys.readouterr()
    assert "Main class initialized" in captured.out


def test_run(capsys) -> None:
    """Test run function."""
    run()
    captured = capsys.readouterr()
    assert "Main class initialized" in captured.out
