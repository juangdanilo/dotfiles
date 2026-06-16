return {
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    config = function()
      require("dressing").setup {}
    end,
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPost", "BufNewFile" },
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = true,
  },

  {
    -- 1. Plugin Core de Depuración
    "mfussenegger/nvim-dap",
  },

  -- 2. Plugin para Interfaz Gráfica
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  {
    -- 3. Plugin para Mostrar Variables en Línea
    "theHamsta/nvim-dap-virtual-text",
  },

  {
    "nvim-neotest/nvim-nio",
  },

  {
    -- (Opcional) Ayudas visuales como iconos
    "onsails/lspkind.nvim",
  },

  -- lua/custom/plugins/mason-dap.lua
  {
    {
      "jay-babu/mason-nvim-dap.nvim",
      event = "VeryLazy",
      dependencies = {
        "williamboman/mason.nvim", -- mason primero
        "mfussenegger/nvim-dap", -- ¡importante! así dap está disponible
        -- opcional: si quieres dap-ui también, pero no es necesario para require('dap')
      },
      opts = {
        automatic_installation = true, -- o false si prefieres manual
        handlers = {},
      },
      config = function(_, opts)
        local dap = require "dap"

        -- Configuración del adaptador de C# (netcoredbg, que no está en mason)
        local netcoredbg_path = vim.fn.expand "~/tools/netcoredbg/build/netcoredbg"
        if vim.fn.executable(netcoredbg_path) == 1 then
          dap.adapters.netcoredbg = {
            type = "executable",
            command = netcoredbg_path,
            args = { "--interpreter=vscode" },
          }
          dap.configurations.cs = {
            {
              type = "netcoredbg",
              name = "Launch .NET Core",
              request = "launch",
              program = function()
                return vim.fn.input("Path to dll/exe: ", vim.fn.getcwd() .. "/", "file")
              end,
            },
          }
        end

        -- Configurar mason-nvim-dap (esto registra adaptadores instalados vía mason, como cpptools)
        require("mason-nvim-dap").setup(opts)

        -- Nota: La configuración de cpptools se hará automáticamente porque mason-nvim-dap
        -- detecta que cpptools está instalado y lo registra en dap.adapters.
        -- Si quieres personalizar la configuración de lanzamiento para C++,
        -- puedes hacerlo aquí, pero después de setup().
        dap.configurations.cpp = dap.configurations.cpp or {}
        table.insert(dap.configurations.cpp, {
          name = "Launch C++ (custom)",
          type = "cppdbg",
          request = "launch",
          program = function()
            return vim.fn.input("Executable path: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopAtEntry = true,
        })
      end,
    },
  },
}
