# Nim IP
A very simple cross-platform package to get your public IPv4 address.

## Install and use as nim package
`nimble install https://github.com/no-waves/nip`

```
import nip
var ip = nip()
```

## Install as standalone program
clone the repo:
`git clone https://github.com/no-waves/nip`

compile with nim:
`nim c -d:ssl -d:release nip.nim`

### To run
`cd nip && ./nip`

or move/add to your path and run `nip`

## Binaries
Linux and Windows binaries currently available