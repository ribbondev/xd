project('xd', 'c', 'd',
  default_options: ['c_std=c18'])

######
# libs

# raylib: https://github.com/raysan5/raylib
arch = 'x64'
cc = meson.get_compiler('c')
raylib = cc.find_library('raylib', dirs: meson.current_source_dir() + '/deps/lib/' + arch)
m = cc.find_library('m', required: false)

# raygui: https://github.com/raysan5/raygui
raygui = static_library('raygui',
  sources: ['deps/include/raygui.c'],
  include_directories: include_directories('deps/include'),
  c_args: ['-DRAYGUI_IMPLEMENTATION'])

#########
# sources

# dyaml
dyaml_sources = [
  'src/dyaml/composer.d',
  'src/dyaml/constructor.d',
  'src/dyaml/dumper.d',
  'src/dyaml/emitter.d',
  'src/dyaml/encoding.d',
  'src/dyaml/escapes.d',
  'src/dyaml/event.d',
  'src/dyaml/exception.d',
  'src/dyaml/linebreak.d',
  'src/dyaml/loader.d',
  'src/dyaml/node.d',
  'src/dyaml/package.d',
  'src/dyaml/parser.d',
  'src/dyaml/queue.d',
  'src/dyaml/reader.d',
  'src/dyaml/representer.d',
  'src/dyaml/resolver.d',
  'src/dyaml/scanner.d',
  'src/dyaml/serializer.d',
  'src/dyaml/style.d',
  'src/dyaml/tagdirective.d',
  'src/dyaml/token.d',
  'src/tinyendian/tinyendian.d'
]

exe_entry_point = ['src/xd.d']

exe_sources = [
  'src/raylib/core.d',
  'src/raylib/shapes.d',
  'src/raylib/text.d',
  'src/raylib/gui.d'
]

source_directories = [
  'src',
  'src/tinyendian'
]

##############
# executables

executable('xd',
  sources: exe_entry_point + exe_sources + dyaml_sources,
  include_directories: source_directories,
  dependencies: [raylib, m],
  link_with: raygui)
