module raylib.shapes;

import raylib.core;

alias draw_rectangle = DrawRectangle;
alias draw_rectangle_v = DrawRectangleV;
alias draw_rectangle_rec = DrawRectangleRec;
alias draw_rectangle_pro = DrawRectanglePro;
alias draw_rectangle_gradient_v = DrawRectangleGradientV;
alias draw_rectangle_gradient_h = DrawRectangleGradientH;
alias draw_rectangle_gradient_ex = DrawRectangleGradientEx;
alias draw_rectangle_lines = DrawRectangleLines;
alias draw_rectangle_lines_ex = DrawRectangleLinesEx;

alias draw_line = DrawLine;
alias draw_line_v = DrawLineV;
alias draw_line_ex = DrawLineEx;

extern (C) {
    export void DrawRectangle(int posX, int posY, int width, int height, Color color);
    export void DrawRectangleV(Vector2 position, Vector2 size, Color color);
    export void DrawRectangleRec(Rectangle rec, Color color);
    export void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
    export void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);
    export void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);
    export void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);
    export void DrawRectangleLines(int posX, int posY, int width, int height, Color color);
    export void DrawRectangleLinesEx(Rectangle rec, int lineThick, Color color); 

    export void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);
    export void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
    export void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);  
}
