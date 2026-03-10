local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- ==========================================================
-- Window & UI Configuration
-- ==========================================================
--
config.enable_tab_bar = false
config.window_decorations = "NONE"
config.window_close_confirmation = "NeverPrompt"

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

config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500
config.disable_default_key_bindings = true
config.keys = {
    { key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action.CopyTo('Clipboard') },
    { key = 'v', mods = 'CTRL|SHIFT', action = wezterm.action.PasteFrom('Clipboard') },
}

return config
