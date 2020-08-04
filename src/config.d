module config;

import dyaml;

struct Config {
    Window window;

    this(const Node node, string _) {
        auto window_node = node["window"];
        window.title = window_node["title"].as!string;
        auto resolution_node = window_node["resolution"];
        window.resolution.x = resolution_node["x"].as!int;
        window.resolution.y = resolution_node["y"].as!int;
    }
}

struct Window {
    string title;
    Resolution resolution;
}

struct Resolution {
    int x;
    int y;
}
