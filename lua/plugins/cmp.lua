return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  dependencies = {
    "supermaven-inc/supermaven-nvim",
  },
  opts = function(_, opts)
    local cmp = require "cmp"
    -- opts.mapping["<C-j>"] = cmp.mapping.select_next_item()
    -- opts.mapping["<C-k>"] = cmp.mapping.select_next_item()
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
      { name = "supermaven", priority = 1200 },
    }
  end,
}
