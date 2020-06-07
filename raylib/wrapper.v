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

pub struct C.Color {
pub mut:
	r byte
	g byte
	b byte
	a byte
}

pub type Rectangle &C.Rectangle
pub type Color &C.Color

fn C.InitWindow(width, height int, title charptr)
fn C.CloseWindow()
fn C.SetTargetFPS(fps int)
fn C.BeginDrawing()
fn C.EndDrawing()
fn C.ClearBackground(color Color)
fn C.DrawText(text charptr, x, y, font_size int, color Color)
fn C.WindowShouldClose() bool

[inline]
pub fn draw_text(text string, x, y, font_size int, color Color) {
	C.DrawText(text.str, x, y, font_size, color)
}

[inline]
pub fn clear_background(color Color) {
	C.ClearBackground(color)
}

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
