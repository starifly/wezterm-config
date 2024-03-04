local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = wezterm.font_with_fallback({
  { family = "Hack Nerd Font", style = "Normal", scale = 1 },
  { family = "Cambria Math",   scale = 1.0 },
})
-- local font = 'Hack Nerd Font'
local font_size = platform().is_mac and 12 or 10.8

return {
  -- font = wezterm.font(font),
  font = font,
  font_size = font_size,

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
