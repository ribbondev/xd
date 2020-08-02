## XD BMS player
Low-fi **work-in-progress** BMS player `linux` `windows` `D2` `raylib`

*Emphasis on simplicity and out of the box configuration*

## Build requirements

- C compiler (https://llvm.org/)
- D2 compiler (https://dlang.org/)
- meson: https://mesonbuild.com/
- ninja: https://ninja-build.org/

## Build, test & run
```sh
# setup meson/dependencies
just setup
# build with meson/ninja
just build
# run
just run
```

See [here](./docs/design-notes.md) for more design detail notes.
