"""Tests for core.mojo. Run with `bojo test` (exit 3 on failure)."""

from std.testing import assert_equal

from gh.LukasLow.bojo_libtemplate.core import greet


def test_greet() -> None:
    assert_equal(greet("mojo"), "hello, mojo")


def test_greet_keeps_the_name() -> None:
    assert_equal(greet(""), "hello, ")
