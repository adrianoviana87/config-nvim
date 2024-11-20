return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = { "javascript", "typescript", "markdown", "html", "css", "ruby", "csv", "json" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

