# bojo_libtemplate

One sentence about what this library does.

```mojo
from gh.LukasLow.bojo_libtemplate import greet

def main():
    print(greet("mojo"))
```

## Install

```sh
bojo get https://github.com/LukasLow/bojo_libtemplate@v0.1.0
```

To import it under a shorter name, alias it in your project's `bojo.toml`:

```toml
[alias]
"gh.LukasLow.bojo_libtemplate" = "greeting"
```

## Layout

```
__init__.mojo        imports only — the public surface, in one place
core.mojo            implementation
cmd/main.mojo        the command (optional; delete it and [cmd] if unused)
_tests/              one file per module; not shipped
docs/                not shipped
.github/             not shipped
AGENTS.md            agent rules; not shipped
```

A repository holds at most one `[pkg]` and at most one `[cmd]`. The command is
run, never imported: `bojo run <url>@<version>`.

`_tests/`, `docs/`, `.github/` and `AGENTS.md` are `export-ignore`d in
`.gitattributes`, so a consumer only receives the code.

## Rules

- A repository is its package. The name is derived, never declared.
- `__init__.mojo` contains imports only.
- A library never compiles anything: native sources are declared in
  `[pkg.linker] ffi` and compiled by the consumer.

## Release

```sh
git tag v0.1.0
git push origin v0.1.0
```

One tag covers the whole repository.

## License

Apache-2.0 — replace this section and add a `LICENSE` file.
