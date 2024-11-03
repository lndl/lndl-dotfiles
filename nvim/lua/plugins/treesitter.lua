local M = {}

local start = function()
  require('nvim-treesitter.configs').setup({
    highlight = {
      enable = true,
    },
    indent = {
      enable = false,
      disable = {},
    },
    auto_install = true,
    ensure_installed = {
      "lua",
      "tsx",
      "toml",
      "php",
      "json",
      "yaml",
      "html",
      "scss",
      "ruby",
      "java",
      "elixir",
      "rust",
      "haskell",
      "go"
    },
    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["am"] = "@function.outer",
          ["im"] = "@function.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
        },
      },
    },
  })
end

M.start = start

return M
