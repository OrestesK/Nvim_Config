return {
  'sainnhe/gruvbox-material',
  'editorconfig/editorconfig-vim',

  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_mappings_enabled = 0
    end,
  },

  {
    "themaxmarchuk/tailwindcss-colors.nvim",
  },

  {
    "https://github.com/mg979/docgen.vim",
    lazy = false,
  },

  {
    'prisma/vim-prisma',
    lazy = false
  },

  {
    'CRAG666/code_runner.nvim',
    lazy = false,
    config = function()
      require('code_runner').setup({
        filetype = {
          cs = {
            "dotnet run"
          },
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt"
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt"
          },
        },
      })
    end,

  },

  {
    'APZelos/blamer.nvim',
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
    config = function()
      require("lsp_signature").setup()
    end,
  },
}
