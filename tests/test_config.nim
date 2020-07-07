import unittest
import config

suite "config.get_config":

  test "loads from xd.conf.yml":
    let cfg = config.get_config()
    check(cfg.window.title == "xd")
    check(cfg.window.resolution.x == 1280)
    check(cfg.window.resolution.y == 720)
