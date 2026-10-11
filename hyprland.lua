local active_border_color = "#C37D10"
local inactive_border_color = "rgba(595959aa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 10,

    -- Frosted glass behind see-through windows.
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      vibrancy = 0.2,
    },
  },
})

-- Frosted bar: blur what's behind the semi-transparent bar.
hl.layer_rule({ match = { namespace = "omarchy-bar" }, blur = true, ignore_alpha = 0.1 })
