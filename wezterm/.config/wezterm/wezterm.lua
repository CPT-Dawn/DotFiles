local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- ==========================================================
-- Window & UI Configuration
-- ==========================================================

config.enable_tab_bar = false
config.window_decorations = "NONE"
config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
    left = 12,
    right = 12,
    top = 12,
    bottom = 12,
}

-- ==========================================================
-- Font Configuration
-- ==========================================================

config.font_size = 12.5
config.font = wezterm.font_with_fallback({
    "JetBrainsMono Nerd Font",
    "Inter",
    "Noto Color Emoji",
})

-- ==========================================================
-- Cursor Style & Key Binds
-- ==========================================================

config.default_cursor_style = "BlinkingBar"
config.cursor_thickness = "1.5pt"
config.disable_default_key_bindings = true
config.keys = {
    { key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo('Clipboard') },
    { key = 'v', mods = 'CTRL|SHIFT', action = wezterm.action.PasteFrom('Clipboard') },
    { key = '+', mods = 'CTRL', action = wezterm.action.IncreaseFontSize },
    { key = '-', mods = 'CTRL', action = wezterm.action.DecreaseFontSize },
    { key = '0', mods = 'CTRL', action = wezterm.action.ResetFontSize },
}

return config
