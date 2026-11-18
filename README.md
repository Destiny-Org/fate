# Fate

Fate is the standard library of the Destiny programming language. It
started as a fork of Phobos, the D standard library.

## Building

Fate is built with the Destiny compiler, which must be checked out next
to it:

```
Destiny/
├── destiny_engine/   https://github.com/Destiny-Org/destiny
└── fate/             https://github.com/Destiny-Org/fate
```

From `destiny_engine/`, build the compiler, druntime and Fate together:

```
make -j$(nproc) HOST_DC=destiny
make -j$(nproc) fate
```

or, once the compiler is built, build Fate on its own from this folder:

```
make -j$(nproc)
```

The Makefile looks for the compiler at
`../destiny_engine/generated/<os>/<build>/<model>/destiny`. Set
`DMD_DIR` to use a compiler checkout in another location.

## Testing

```
make -j$(nproc) unittest
```

## Names inherited from Phobos

Modules keep their `std.*` and `etc.*` names, so `import std.stdio;`
works as before. The compiled library is `libfate` (formerly `libphobos2`),
and the v3 preview package is `fate.sys` (formerly `phobos.sys`).

## License

Boost Software License 1.0; see [LICENSE_1_0.txt](LICENSE_1_0.txt).
