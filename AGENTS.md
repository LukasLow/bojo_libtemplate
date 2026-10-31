# AGENTS.md

Rules for any agent editing this repository. One line per rule, English, no prose.

- One repository is one library; the library name is the repository name (`mojo-tls` → `mojo_tls`).
- At most one `[pkg]` and one `[cmd]` per repository; delete `cmd/` and `[cmd]` if the repository ships no command.
- When you copy this template, replace `bojo_libtemplate` everywhere in one commit: the `[repo] url`, `__init__.mojo`, `_tests/`, `README.md`, `docs/`.
- `__init__.mojo` holds imports only: no logic, no constants, no side effects.
- Write every import with its full module path; never rely on a local alias.
- Put implementation in `*.mojo` next to `__init__.mojo`, one concern per file.
- Put tests in `_tests/`, one file per module, named after the module.
- Tag releases `vX.Y.Z` for the whole repository; never use `<pkg>/vX` or `<pkg>@vX`.
- Run `bojo test` and `bojo build` before committing; quote the first error, do not guess.
- Never add a build hook to a library; native sources go into `[pkg.linker] ffi` and stay uncompiled.
- Run `bojo fmt` on every file you touch.
- Keep `_tests/`, `docs/`, `.github/` and this file out of the package: they are `export-ignore`d.
