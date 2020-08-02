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
  c_args: '-DRAYGUI_IMPLEMENTATION')

#########
# sources

exe_entry_point = ['src/xd.d']
exe_sources = [
  'src/raylib/core.d',
  'src/raylib/shapes.d',
  'src/raylib/text.d',
  'src/raylib/gui.d'
]
source_directories = ['src']

##############
# executables

executable('xd',
  sources: exe_entry_point + exe_sources,
  include_directories: source_directories,
  dependencies: [raylib, m],
  link_with: raygui)
