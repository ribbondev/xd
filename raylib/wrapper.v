module raylib

#flag -I @VROOT/depends/include
#flag -L @VROOT/depends/lib/x86
#flag -l raylib
#flag -D WIN32_LEAN_AND_MEAN
#flag -D NOUSER
#flag -D NOGDI

#include <raylib.h>

pub struct C.Rectangle {
pub mut:
	x f32
	y f32
	width f32
	height f32
}

fn C.InitWindow(width, height int, title charptr)

pub fn init_window(width, height int, title string) {
	C.InitWindow(width, height, title.str)
}
