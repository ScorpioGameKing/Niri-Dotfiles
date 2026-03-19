local wezterm = require 'wezterm'

local config = {}

config.initial_cols = 120
config.initial_rows = 28

config.font = wezterm.font 'Agave Nerd Font Mono'

config.font_size = 12
config.color_scheme = 'Gruvbox Dark (Gogh)'

config.window_close_confirmation = 'NeverPrompt'

return config