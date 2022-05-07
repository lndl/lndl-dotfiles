if !exists('g:loaded_nvim_treesitter') | finish | endif

lua << EOF
  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = {},
    },
    indent = {
      enable = false,
      disable = {},
    },
    ensure_installed = {
      "tsx",
      "toml",
      "php",
      "json",
      "yaml",
      "html",
      "scss",
      "ruby",
      "elixir",
      "rust",
      "haskell"
    },
  }
  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
  parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

  require'nvim-treesitter.configs'.setup {
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
  }
EOF
