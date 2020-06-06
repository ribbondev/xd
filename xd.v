module main

import engine
import raylib

fn main() {
	println('hello world!')
	engine.test()
	raylib.init_window(640, 480, "hello world")
}
