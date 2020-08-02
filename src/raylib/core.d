module raylib.core;

alias init_window = InitWindow;
alias set_target_fps = SetTargetFPS;
alias window_should_close = WindowShouldClose;
alias begin_drawing = BeginDrawing;
alias clear_background = ClearBackground;
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

struct Vector2 {
  float x;
  float y;
}

struct Rectangle {
  float x;
  float y;
  float width;
  float height;
}

extern (C) {
  export void InitWindow(int width, int height, const char *title);
  export void SetTargetFPS(int fps);
  export bool WindowShouldClose();
  export void BeginDrawing();
  export void ClearBackground(Color color);
  export void CloseWindow();
  export void EndDrawing();
}
