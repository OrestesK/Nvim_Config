return {
  n = {
    ["<leader>b"]  = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    ["<leader>j"]  = { "<cmd>bNext<CR>", desc = "Next tab" },
    ["<leader>k"]  = { "<cmd>bnext<CR>", desc = "Previous tab" },


    -- ["<leader>,"] = { name = "Latex" },
    ["<leader>r"] = { "<cmd>RunCode<CR>", desc = "Run Code" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
