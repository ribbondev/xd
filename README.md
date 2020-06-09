## XD BMS player
Low-fi work-in-progress BMS player with an emphasis on simplicity and out of the box configuration.

## Tech
- Nim: http://nim-lang.org/
- Raylib: http://raylib.com
  - Graphics
  - Fonts
  - Windowing
  - Sound
  - Input
- ImGui? https://github.com/ocornut/imgui
- TOML configuration?? https://github.com/toml-lang/toml

## Design goals
- No video support
- No song previews
- Fast song import
- Minimal ui
- Developer console
- Simple configuration
- Cross platform

## Build requirements
- Nim compiler in path: http://nim-lang.org/
- Taskfile task runner in path: https://taskfile.dev

## Build, test & run
```sh
# setup dependencies
task setup

# build
task build

# run
task run

# bundle release
task release

# remove generated files
task clean
```
