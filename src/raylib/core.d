module raylib.core;

import core.stdc.stdint;
import core.stdc.stdio;
import std.bitmanip;

alias init_window = InitWindow;
alias set_target_fps = SetTargetFPS;
alias window_should_close = WindowShouldClose;
alias begin_drawing = BeginDrawing;
alias clear_background = ClearBackground;
alias draw_text = DrawText;
alias end_drawing = EndDrawing;
alias close_window = CloseWindow;

Color LIGHTGRAY = Color(200, 200, 200, 255);
Color DARKGRAY = Color(80, 80, 80, 255);

struct Color {
  char r;
  char g;
  char b;
  char a;
}

extern (C) {
  export void InitWindow(int width, int height, const char *title);
  export void SetTargetFPS(int fps);
  export bool WindowShouldClose();
  export void BeginDrawing();
  export void ClearBackground(Color color);
  export void CloseWindow();
  export void EndDrawing();
  export void DrawText(const char *text, int posX, int posY, int fontSize, Color color);
}
