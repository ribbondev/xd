## XD BMS player
Low-fi work-in-progress BMS player with an emphasis on simplicity and out of the box configuration.

## Tech
- V language: http://vlang.io
- Raylib: http://raylib.com
  - Graphics
  - Fonts
  - Windowing
  - Sound
  - Input
- ImGui or vui? https://github.com/ocornut/imgui
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
- V compiler in path: http://vlang.io
- Taskfile task runner in path: https://taskfile.dev

## Build, test & run
```sh
# setup dependencies
task setup

# build
task build # or just v xd.v

# run
v run xd.v # or just ./xd.exe

# bundle release
task release

# remove generated files
task clean
```
