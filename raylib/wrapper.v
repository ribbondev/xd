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
fn C.CloseWindow()
fn C.SetTargetFPS(fps int)
fn C.BeginDrawing()
fn C.EndDrawing()
fn C.WindowShouldClose() bool

[inline]
pub fn init_window(width, height int, title string) {
	C.InitWindow(width, height, title.str)
}

[inline]
pub fn set_target_fps(fps int) {
 	C.SetTargetFPS(fps)
}

[inline]
pub fn begin_drawing() {
	C.BeginDrawing()
}

[inline]
pub fn end_drawing() {
	C.EndDrawing()
}

[inline]
pub fn window_should_close() bool {
 	return C.WindowShouldClose()
}

[inline]
pub fn close_window() {
	C.CloseWindow()
}
