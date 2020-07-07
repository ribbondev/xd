## XD BMS player
Low-fi **work-in-progress** BMS player `linux` `windows` `nim` `raylib`

*Emphasis on simplicity and out of the box configuration*

## Build requirements
- Nim compiler in path: http://nim-lang.org/
- Taskfile task runner in path: https://taskfile.dev

## Build, test & run
```sh
# install dependencies from /deps/
task setup

# install nim dependencies
task install

# build executable
task build

# run the unit tests
task test

# build+run executable
task run

# bundle release
task release

# remove generated files
task clean
```

See [here](./docs/design-notes.md) for more design detail notes.
