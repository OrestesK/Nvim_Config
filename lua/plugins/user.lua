---@type LazySpec
return {
  -- Theme
  "sainnhe/gruvbox-material",

  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_mappings_enabled = 0
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup {
        filetype = {
          cs = {
            "dotnet run",
          },
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt",
          },
        },
      }
    end,
  },

  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup {
        color = {
          suggestion_color = "#f38ba8",
          cterm = 244,
        },
        log_level = "off", -- set to "off" to disable logging completely
        -- disable_inline_completion = true, -- disables inline completion for use with cmp
        -- disable_keymaps = true, -- disables built in keymaps for more manual control
        -- keymaps = {
        -- accept_suggestion = "<-f>",
        -- },
      }
    end,
  },
  {
    "APZelos/blamer.nvim",
    lazy = false,
    init = function()
      vim.g.blamer_enabled = 1
      vim.g.blamer_relative_time = 3
      vim.g.blamer_show_in_insert_modes = 0
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- { "rcarriga/nvim-notify", enabled = false },
}
