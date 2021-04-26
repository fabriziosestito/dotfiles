local wezterm = require 'wezterm';

function string:split(delimiter)
    local result = {}
    local from = 1
    local delim_from, delim_to = string.find(self, delimiter, from, true)
    while delim_from do
        if (delim_from ~= 1) then
            table.insert(result, string.sub(self, from, delim_from-1))
        end
        from = delim_to + 1
        delim_from, delim_to = string.find(self, delimiter, from, true)
    end
    if (from <= #self) then table.insert(result, string.sub(self, from)) end
    return result
end

wezterm.on("open-uri", function(window, pane, uri)
  print(uri)
  local cmd, file_name, line_no = string:split(uri, ":")
  if cmd ~= "edit" then
    window:perform_action(wezterm.action{SpawnCommandInNewWindow={
         args={"emacs", file_name}
      }}, pane);
    -- prevent the default action from opening in a browser
    return false
  end
  -- otherwise, by not specifying a return value, we allow later
  -- handlers and ultimately the default action to caused the
  -- URI to be opened in the browser
end)

return {
  colors = {
    tab_bar = {

      -- The color of the strip that goes along the top of the window
      background = "#2A2426",

      -- The active tab is the one that has focus in the window
      active_tab = {
        -- The color of the background area for the tab
        bg_color = "#e1acff",
        -- The color of the text for the tab
        fg_color = "#2A2426",

        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = "Bold",

        -- Specify whether you want "None", "Single" or "Double" underline for
        -- label shown for this tab.
        -- The default is "None"
        underline = "Single",

        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,

        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = "#2A2426",
        fg_color = "#D3A0BC",

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over inactive tabs
      inactive_tab_hover = {
        bg_color = "#e1acff",
        fg_color = "#2A2426",
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab_hover`.
      }
      }
    },
	hide_tab_bar_if_only_one_tab = true,
	color_scheme_dirs = {"~/.config/wezterm/colors"},
	color_scheme = "Miramare",
	font = wezterm.font("SF Mono"),
	font_size = 13,
	window_padding = {
    	left = 40,
    	-- This will become the scrollbar width if you have enabled the scrollbar!
    	right = 40,

    	top = 40,
    	bottom = 40,
  },
  keys = {
    {key="+", mods="CTRL", action="IncreaseFontSize"},
    {key="-", mods="CTRL", action="DecreaseFontSize"},
  },
  window_close_confirmation = "NeverPrompt",
  hyperlink_rules = {
    -- Linkify things that look like URLs
    -- This is actually the default if you don't specify any hyperlink_rules
    {
      regex = "\\b\\w+://(?:[\\w.-]+)\\S*\\b",
      format = "$0",
    },

    -- linkify email addresses
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },

    -- file:// URI
    {
      regex = "\\bfile://\\S*\\b",
      format = "$0",
    },

    -- file:// URI
    {
      regex = "(/?(?:[\\w.-]+/)*[\\w.-]+):(\\d+)",
      format = "edit:$1:$2",
    },

    -- Make task numbers clickable
    --[[
    {
      regex = "\\b[tT](\\d+)\\b"
      format = "https://example.com/tasks/?t=$1"
    }
    ]]
  }
}
