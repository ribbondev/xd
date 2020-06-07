module main

import engine
import raylib

fn main() {
	engine.test()
	raylib.init_window(640, 480, 'hello world')
	raylib.set_target_fps(144)
	for (!raylib.window_should_close()) {
		raylib.begin_drawing()
		// todo: draw
		raylib.end_drawing()
	}
	raylib.close_window()
}
