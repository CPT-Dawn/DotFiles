return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,

      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",

        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "jsonc",

        "rust",
        "toml",

        "bash",
        "c",
        "cpp",
        "make",
        "cmake",

        "yaml",
        "dockerfile",
        "gitignore",
        "gitattributes",
        "gitcommit",

        "markdown",
        "markdown_inline",
      },
    },
  },

  {
      "windwp/nvim-ts-autotag",
      opts = {},
  },
}
