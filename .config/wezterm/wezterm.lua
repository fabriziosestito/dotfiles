local wezterm = require("wezterm")
local colors = require('colors/rose-pine').colors()
local window_frame = require('colors/rose-pine').window_frame()
return {
  window_padding = {
    left = 40,
    right = 40,
    top = 40,
    bottom = 40,
  },
  colors = colors,
  font = wezterm.font({ family = "PragmataPro", harfbuzz_features = { "calt=1", "clig=1", "c2sc=0", "ss13=1" } }),
  font_rules = {
    -- Define a rule that matches when italic text is shown
    {
      -- If specified, this rule matches when a cell's italic value exactly
      -- matches this.  If unspecified, the attribute value is irrelevant
      -- with respect to matching.
      italic = true,

      -- Match based on intensity: "Bold", "Normal" and "Half" are supported
      -- intensity = "Normal",

      -- Match based on underline: "None", "Single", and "Double" are supported
      -- underline = "None",

      -- Match based on the blink attribute: "None", "Slow", "Rapid"
      -- blink = "None",

      -- Match based on reverse video
      -- reverse = false,

      -- Match based on strikethrough
      -- strikethrough = false,

      -- Match based on the invisible attribute
      -- invisible = false,

      -- When the above attributes match, apply this font styling
      font = wezterm.font({ family = "PragmataPro", harfbuzz_features = { "calt=1", "clig=1", "ss06=1" } }),
    },
  },
  font_size = 16,
  -- window_decorations = "NONE",
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  -- You can specify some parameters to influence the font selection;
  -- for example, this selects a Bold, Italic font variant.
}
