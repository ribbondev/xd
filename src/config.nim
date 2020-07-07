import yaml/serialization as yamls
import streams
import options

const config_file = "xd.conf.yml"

type ResolutionConfig* = object
  x*: int
  y*: int

type WindowConfig* = object
  title*: string
  resolution*: ResolutionConfig

type XDConfig* = object
  window*: WindowConfig

proc load_config*(file_name: string): XDConfig =
  var config: XDConfig
  let stream = newFileStream(file_name)
  yamls.load(stream, config)
  stream.close()
  return config

var cfg {.global, threadvar.}: Option[XDConfig]

proc get_config*(): XDConfig =
  if cfg.isSome(): return cfg.get()
  cfg = some(load_config(config_file))
  return cfg.get()
