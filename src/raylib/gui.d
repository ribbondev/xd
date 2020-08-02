module raylib.gui;

import raylib.core;

alias gui_button = GuiButton;

extern (C) {
  export bool GuiButton(Rectangle bounds, const char *text);
}
