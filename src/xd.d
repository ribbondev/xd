
import std.stdio;
import raylib.core;
import raylib.text;
import raylib.gui;

void main() {
  init_window(800, 800, "blah");
  set_target_fps(60);
  while (!window_should_close()) {
    begin_drawing();
    clear_background(LIGHTGRAY);
    DrawText("Congrats! You created your first window!", 190, 200, 20, DARKGRAY);
    gui_button(Rectangle(5, 5, 30, 30), "Blah");
    end_drawing();
  }
  close_window();
}
