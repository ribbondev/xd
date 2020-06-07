module main

import engine
import raylib

const (
	bkg_color = raylib.Color { r: 200, g: 20, b: 150, a: 255 }
	font_color = raylib.Color { r: 0, g: 0, b: 0, a: 255 }
)

fn main() {
	engine.test()
	raylib.init_window(640, 480, 'XD')
	raylib.set_target_fps(144)
	for (!raylib.window_should_close()) {
		raylib.begin_drawing()		
		raylib.clear_background(bkg_color)
		raylib.draw_text('POGGERS', 213, 220, 48, font_color)
		raylib.end_drawing()
	}
	raylib.close_window()
}
