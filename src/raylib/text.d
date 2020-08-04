module raylib.text;

import raylib.core;

alias draw_text = DrawText;

extern (C) {
    export void DrawText(const char *text, int posX, int posY, int fontSize, Color color);
}
