-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,

  hl_override = {
    ["@comment"] = { italic = true },
    ["@keyword.function"] = { italic = true },
    ["@keyword.return"] = { italic = true },
    ["@keyword"] = { italic = true },
  },
}

---------- NvChad UI Modules
M.ui = {
  -- cmp themeing
  cmp = {
    icons_left = true, -- only for non-atom styles!
    abbr_maxwidth = 60,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = true, -- will work for css lsp too
      icon = "󱓻",
    },
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

-- lsp
M.lsp = { signature = true }

-- colorify
M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = false },
}

return M
