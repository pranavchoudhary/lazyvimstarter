return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "go", "gomod" },
    config = function()
      require("go").setup({
        max_line_len = 128,
      })
    end,
    build = ':lua require("go.install").update_all_sync()',
    event = { "CmdlineEnter" },
  },
}
