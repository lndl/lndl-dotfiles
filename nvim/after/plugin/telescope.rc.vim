nnoremap <silent> <leader>; <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> <leader>f <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> <leader>i <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent> <leader>o <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <silent> <leader>d <cmd>lua require('telescope.builtin').diagnostics()<cr>
nnoremap <silent> <leader>h <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <silent> <leader>m <cmd>lua require('telescope.builtin').marks()<cr>

lua <<EOF
  local actions = require "telescope.actions"
  require('telescope').setup{
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = actions.close
        }
      }
    }
  }
EOF
