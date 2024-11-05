local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font('FiraCode Nerd Font')
config.color_scheme = 'Eldritch'

config.enable_tab_bar = false
config.use_fancy_tab_bar = false

-- config.window_background_image = '/Users/spencerarchibald/dotfiles/kitty/images/uncle_rico.png'
--
-- config.window_background_image_hsb = {
--     brightness = 0.2,
--     hue = 1.0,
--     saturation = 1,
-- }
-- config.window_background_opacity = 0.5

config.window_decorations = 'RESIZE'

return config
