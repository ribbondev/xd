
import std.stdio;
import std.string;
import raylib.core;
import raylib.text;
import raylib.gui;
import dyaml;
import config;

void main() {
  const root = Loader.fromFile("xd.conf.yml").load();
  auto config = root.as!Config;
  writeln(config.window.title);
  init_window(config.window.resolution.x, config.window.resolution.y, toStringz(config.window.title));
  set_target_fps(60);
  while (!window_should_close()) {
    begin_drawing();
    clear_background(LIGHTGRAY);
    draw_text("Congrats! You created your first window!", 190, 200, 20, DARKGRAY);
    if (gui_button(Rectangle(5, 5, 30, 30), "Blah")) {
      writeln("clickerz!");
    }
    end_drawing();
  }
  close_window();
}
