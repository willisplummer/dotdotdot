-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.quit_when_all_windows_are_closed = false

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false
config.bypass_mouse_reporting_modifiers = 'CMD'

config.window_decorations = "RESIZE"

config.color_scheme = "Tokyo Night"

config.window_background_opacity = 1
config.macos_window_background_blur = 10

config.initial_rows = 36
config.initial_cols = 120

config.keys = {
  { mods = "OPT", key = "LeftArrow",  action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
  { mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
  { mods = "CMD", key = "LeftArrow",  action = wezterm.action.SendKey({ mods = "CTRL", key = "a" }) },
  { mods = "CMD", key = "RightArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "e" }) },
  { mods = "CMD", key = "Backspace",  action = wezterm.action.SendKey({ mods = "CTRL", key = "u" }) },

}

-- and finally, return the configuration to wezterm
return config
