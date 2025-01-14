-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Initial cols & rows
config.initial_cols = 80
config.initial_rows = 20

-- Spawn a fish shell in login mode
config.default_prog = { '/usr/bin/zsh', '-l' }

-- Window decoration
config.window_decorations = "RESIZE"

-- Color scheme:
config.color_scheme = 'Tokyo Night'

-- Font
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.window_background_opacity = 0.9

-- Background Image
config.background = {
    {
      source = {
       	File = '/home/carl/Pictures/Saved/pink.png',	
      },
      repeat_x = 'Mirror',  
      repeat_y = 'NoRepeat',
      hsb = {
        brightness = 0.25,
        hue = 1.0,        
        saturation = 1.0, 
      },
      opacity = 1.0,      
    },
  }

-- and finally, return the configuration to wezterm
return config
