return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = "Second Brain",
        path = "/Volumes/Gdanilo/Obsidian/Second Brain/",
      },
      {
        name = "work",
        path = "/Volumes/Gdanilo/Obsidian/work",
      },
    },

    picker = {
      name = "telescope.nvim",
    },
    image = {
      resolve = function(path, src)
        local api = require "obsidian.api"
        if api.path_is_note(path) then
          return api.resolve_attachment_path(src)
        end
      end,
    },

    sources = {
      -- NOTE: no need if you don't have custom markdown stuff
      per_filetype = {
        markdown = {
          "lsp", -- NOTE: explicitly enable lsp
          -- inherit_defaults = true, -- NOTE: if your defaults include lsp
          "dictionary",
        },
      },
    },
  },
}
