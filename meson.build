project('xd', 'c', 'd',
  default_options: ['c_std=c18'])

######
# libs

arch = 'x64'
cc = meson.get_compiler('c')
raylib = cc.find_library('raylib', dirs: meson.current_source_dir() + '/deps/lib/' + arch)
m = cc.find_library('m', required: false)

#########
# sources

exe_entry_point = ['src/xd.d']
exe_sources = []
source_directories = ['src']

##############
# executables

executable('xd',
  sources: exe_entry_point + exe_sources,
  include_directories: source_directories,
  dependencies: [raylib, m])
