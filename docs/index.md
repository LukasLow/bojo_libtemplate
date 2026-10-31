# bojo_libtemplate

One page is enough for most libraries. Delete this sentence and write what the
library is for, what it is not for, and the one example that makes it obvious.

## Design

- What the public surface is and why.
- What this library deliberately does not do.
- Which invariant must never break.

## Example

```mojo
from gh.LukasLow.bojo_libtemplate import greet

def main():
    print(greet("mojo"))
```

## Limits

Known restrictions, platform gaps and anything a consumer must know before
relying on it.
