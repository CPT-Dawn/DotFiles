local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true

-- UI
config.enable_tab_bar = false
config.window_decorations = "NONE"
config.window_close_confirmation = "NeverPrompt"
config.font_size = 12.5

return config
