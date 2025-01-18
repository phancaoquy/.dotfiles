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
config.window_decorations = "TITLE|RESIZE"
config.enable_scroll_bar = true

-- Color scheme:
config.colors = {
  -- The default text color
  foreground = '#FFFFFF', -- white
  -- The default background color
  background = '#000000', -- black

  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_bg = '#FFFFFF',
  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_fg = 'black',
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = '#FFFFFF',

  -- the foreground color of selected text
  selection_fg = '#FFFFFF',
  -- the background color of selected text
  selection_bg = '#414868', -- dark blue

  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  scrollbar_thumb = '#D0CFCC', -- grey

  -- The color of the split lines between panes
  split = '#FFFFFF', -- white

  ansi = {
    '#000000', -- black
    '#B30000', -- maroon
    '#0BF607', -- green
    '#F76807', -- orange
    '#077EF7', -- navy
    '#B560F7', -- purple
    '#70F7EF', -- teal
    '#D0CFCC', -- silver
  },
  brights = {
    '#A0A0A0', -- grey
    '#FF1A1A', -- red
    '#0BF607', -- lime
    '#F78908', -- yellow
    '#0496FA', -- blue
    '#F769ED', -- fuchsia
    '#70F7EF', -- aqua
    '#FFFFFF', -- white
  },

  -- Arbitrary colors of the palette in the range from 16 to 255
  indexed = { [136] = '#FFFF00' }, -- yellow

  -- Since: 20220319-142410-0fcdea07
  -- When the IME, a dead key or a leader key are being processed and are effectively
  -- holding input pending the result of input composition, change the cursor
  -- to this color to give a visual cue about the compose state.
  compose_cursor = 'F76807', -- orange

  -- Colors for copy_mode and quick_select
  -- available since: 20220807-113146-c2fee766
  -- In copy_mode, the color of the active text is:
  -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
  -- 2. selection_* otherwise
  copy_mode_active_highlight_bg = { Color = '#000000' }, -- black
  -- use `AnsiColor` to specify one of the ansi color palette values
  -- (index 0-15) using one of the names "Black", "Maroon", "Green",
  --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
  -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  copy_mode_active_highlight_fg = { AnsiColor = 'Black' }, -- black
  copy_mode_inactive_highlight_bg = { Color = '#52AD70' }, -- green
  copy_mode_inactive_highlight_fg = { AnsiColor = 'White' }, -- white

  quick_select_label_bg = { Color = 'peru' }, -- peru
  quick_select_label_fg = { Color = '#FFFFFF' }, -- white
  quick_select_match_bg = { AnsiColor = 'Navy' }, -- navy
  quick_select_match_fg = { Color = '#FFFFFF' }, -- white
}

-- Font
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 11.0
config.window_background_opacity = 0.9

-- Background Image
config.background = {
    {
      source = {
       	File = '/home/aiden/Pictures/Saved/pink.png',	
      },
      repeat_x = 'Mirror',  
      repeat_y = 'NoRepeat',
      hsb = {
        brightness = 0.15,
        hue = 1.0,        
        saturation = 1.0, 
      },
      opacity = 1.0,      
    },
  }

-- and finally, return the configuration to wezterm
return config
