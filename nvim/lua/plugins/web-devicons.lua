return {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  opts = function()
    local icons = {
      default_icon = {
        icon = "󰈚",
        name = "Default",
        color = "#ced4df",
      },

      c = {
        icon = "",
        name = "c",
        color = "#36A3D9",
      },

      css = {
        icon = "",
        name = "css",
        color = "#36A3D9",
      },

      dart = {
        icon = "",
        name = "dart",
        color = "#95E6CB",
      },

      deb = {
        icon = "",
        name = "deb",
        color = "#95E6CB",
      },

      html = {
        icon = "",
        name = "html",
        color = "#ff949b",
      },

      jpeg = {
        icon = "󰉏",
        name = "jpeg",
        color = "#A37ACC",
      },

      jpg = {
        icon = "󰉏",
        name = "jpg",
        color = "#A37ACC",
      },

      js = {
        icon = "󰌞",
        name = "js",
        color = "#f0df8a",
      },

      kt = {
        icon = "󱈙",
        name = "kt",
        color = "#ffa455",
      },

      lock = {
        icon = "󰌾",
        name = "lock",
        color = "#F07178",
      },

      lua = {
        icon = "",
        name = "lua",
        color = "#36A3D9",
      },

      mp3 = {
        icon = "󰎆",
        name = "mp3",
        color = "#ced4df",
      },

      mp4 = {
        icon = "",
        name = "mp4",
        color = "#ced4df",
      },

      out = {
        icon = "",
        name = "out",
        color = "#ced4df",
      },

      png = {
        icon = "󰉏",
        name = "png",
        color = "#A37ACC",
      },

      py = {
        icon = "",
        name = "py",
        color = "#95E6CB",
      },

      ["robots.txt"] = {
        icon = "󰚩",
        name = "robots",
        color = "#36A3D9",
      },

      toml = {
        icon = "",
        name = "toml",
        color = "#36A3D9",
      },

      ttf = {
        icon = "",
        name = "TrueTypeFont",
        color = "#ced4df",
      },

      rb = {
        icon = "",
        name = "rb",
        color = "#ff8087",
      },

      rpm = {
        icon = "",
        name = "rpm",
        color = "#ffa455",
      },

      vue = {
        icon = "󰡄",
        name = "vue",
        color = "#b9e75b",
      },

      woff = {
        icon = "",
        name = "WebOpenFontFormat",
        color = "#ced4df",
      },

      woff2 = {
        icon = "",
        name = "WebOpenFontFormat2",
        color = "#ced4df",
      },

      xz = {
        icon = "",
        name = "xz",
        color = "#f0df8a",
      },

      zip = {
        icon = "",
        name = "zip",
        color = "#f0df8a",
      },
      go = {
        icon = "󰟓",
        color = "#00acc1",
        name = "Go",
      },
      ["go.mod"] = {
        icon = "󰟓",
        color = "#ec407a",
        name = "GoMod",
      },
      ["go.sum"] = {
        icon = "󰟓",
        color = "#ec407a",
        name = "GoSum",
      },
      Dockerfile = {
        icon = "󰡨",
        color = "#0288D1",
        name = "Dockerfile",
      },
      dockerfile = {
        icon = "󰡨",
        color = "#0288D1",
        name = "dockerfile",
      },
      ["docker-compose.yaml"] = {
        icon = "󰡨",
        color = "#0288D1",
        name = "DockerCompose",
      },
      [".dockerignore"] = {
        icon = "󰡨",
        color = "#0288D1",
        name = "DockerCompose",
      },
      ["Makefile"] = {
        icon = "",
        color = "#ef5350",
        name = "makefile",
      },
      [".env.example"] = {
        icon = "󰙪",
        color = "#fbc02d",
        name = ".env.example",
      },
      [".env"] = {
        icon = "󰙪",
        color = "#fbc02d",
        name = ".env.example",
      },
      ["sql"] = {
        icon = "",
        color = "#ffca29",
        name = "sql",
      },
      ["json"] = {
        icon = "󰘦",
        color = "#ffca29",
        name = "json",
      },
      ["purs"] = {
        icon = "",
        color = "#42a5f5",
        name = "purs",
      },
      ["pdf"] = {
        icon = "",
        color = "#ef5351",
        name = "pdf",
      },
      [".gitignore"] = {
        icon = "󰊢",
        color = "#e64a19",
        name = ".gitignore",
      },
      ["license"] = {
        icon = "󰄤",
        color = "#e64a19",
        name = "LICENSE",
      },
      ["pem"] = {
        icon = "󰌆",
        color = "#25a79a",
        name = "pem",
      },
      ["sh"] = {
        icon = "󰆍",
        color = "#ff7043",
        name = "sh",
      },
      ["yaml"] = {
        icon = "󰈚",
        color = "#ef5351",
        name = "yaml",
      },
      ["rs"] = {
        icon = "",
        color = "#ff7043",
        name = "rs",
      },
      ["ts"] = {
        icon = "",
        color = "#007acc",
        name = "ts",
      },
      ["jenkinsfile"] = {
        icon = "",
        color = "#f0d7b7",
        name = "jenkinsfile",
      },
    }
    return { override = icons }
  end,
  config = function(_, opts)
    require("nvim-web-devicons").setup(opts)
  end,
}
