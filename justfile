arch := "x64"

setup:
  dub fetch tinyendian
  dub build tinyendian
  dub fetch dyaml
  dub build dyaml
  meson builddir
  cp deps/bin/{{arch}}/raylib.dll builddir/raylib.dll
  cp xd.conf.yml builddir/xd.conf.yml

build:
  cd builddir && ninja

run:
  cd builddir && ninja
  ./builddir/xd

test:
  cd builddir && ninja
  ./builddir/xd_tests
