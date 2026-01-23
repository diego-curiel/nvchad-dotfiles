-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin-latte",
  theme_toggle = { "catppuccin", "catppuccin-latte" },
  hl_override = {
    Comment = {
      italic = true,
      fg = "#a3a3a3",
    },
    ["@comment"] = {
      italic = true,
      fg = "#a3a3a3",
    },
  },
  transparency = false,
}

M.nvdash = { load_on_startup = true }
M.ui = {
  tabufline = {
    order = { "buffers", "tabs", "btns" },
    enabled = true,
    lazyload = false,
  },
}

return M
