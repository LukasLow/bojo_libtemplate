"""Implementation of bojo_libtemplate.

One concern per file. Everything a consumer may call is re-exported from
`__init__.mojo`; everything else stays private to the package.
"""


def greet(name: String) -> String:
    """Return a greeting for `name`."""
    return "hello, " + name
