local wezterm = require 'wezterm'

local config = wezterm.config_builder()  -- Use this for better error feedback

-- Window size
config.initial_cols = 160
config.initial_rows = 64

-- Theme / Colors
config.color_scheme = 'Builtin Solarized Dark'
config.colors = {
  foreground = '#ffffff',
  background = '#000000',
}

-- Font
config.font = wezterm.font_with_fallback { 'JetBrains Mono' }
config.font_size = 9.0

-- Window appearance
config.window_decorations = 'RESIZE'
config.window_background_opacity = 1.0
config.text_background_opacity = 1.0
config.adjust_window_size_when_changing_font_size = false
config.default_cursor_style = 'BlinkingBar'

-- Scrollback
config.scrollback_lines = 100000

-- Key bindings (vim-style navigation + splits/tabs)
config.keys = {
  { key = '\\', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = '-',  mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical   { domain = 'CurrentPaneDomain' } },
  { key = 'T',  mods = 'CTRL|SHIFT', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'W',  mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = true } },
  { key = 'H',  mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'L',  mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right' },
  { key = 'K',  mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'J',  mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down' },
}

-- Launch directly into Ubuntu WSL
config.default_domain = 'WSL:Ubuntu'

-- Optional: Start in Linux home if needed (rarely required)
-- config.default_cwd = wezterm.home_dir

return config
