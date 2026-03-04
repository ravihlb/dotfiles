local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.color_scheme = 'kanagawabones'
config.font = wezterm.font('FantasqueSansM Nerd Font')
config.font_size = 13
config.window_background_opacity = 0.85
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'NONE'

return config
