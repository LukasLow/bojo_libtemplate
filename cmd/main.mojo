"""The command entry point.

`bojo run https://github.com/LukasLow/bojo_libtemplate@v0.1.0` builds this file
against the library in the same repository. A command is never imported, so it
needs no module path and no alias.

Delete this file and the `[cmd]` section if the repository ships no command.
"""

from gh.LukasLow.bojo_libtemplate import greet


def main():
    print(greet("mojo"))
