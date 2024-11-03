local M = {}

local dap = require('dap')

dap.configurations.java = {
  {
    type = 'java';
    request = 'attach';
    name = "Debug (Attach) - Remote";
    hostName = "127.0.0.1";
    port = 5005;
  },
}

-- INFO: Must be global to be present in a global mapping
function attach_to_debug()
  dap.continue()
  print("Debug attached successfully!")
end

local start = function()
  function nnoremap(rhs, lhs, bufopts, desc)
    bufopts.desc = desc
    vim.keymap.set("n", rhs, lhs, bufopts)
  end
  
  local bufopts = {}
  
  -- nvim-dap
  nnoremap("<leader>ds", "<cmd>lua attach_to_debug()<cr>", bufopts, "Attach to debug")
  nnoremap("<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", bufopts, "Set breakpoint")
  -- nnoremap("<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", "Set conditional breakpoint")
  -- nnoremap("<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", "Set log point")
  -- nnoremap('<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>", "Clear breakpoints")
  -- nnoremap('<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>', "List breakpoints")
  
  nnoremap("<leader>dc", "<cmd>lua require'dap'.continue()<cr>", bufopts, "Continue")
  nnoremap("<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", bufopts, "Step over")
  nnoremap("<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", bufopts, "Step into")
  nnoremap("<leader>do", "<cmd>lua require'dap'.step_out()<cr>", bufopts, "Step out")
  nnoremap('<leader>dd', "<cmd>lua require'dap'.disconnect()<cr>", bufopts, "Disconnect")
  nnoremap('<leader>dt', "<cmd>lua require'dap'.terminate()<cr>", bufopts, "Terminate")
  nnoremap("<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", bufopts, "Open REPL")
  nnoremap("<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", bufopts, "Run last")
  nnoremap('<leader>di', function() require"dap.ui.widgets".hover() end, bufopts, "Variables")
  nnoremap('<leader>d?', function() local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes) end, bufopts, "Scopes")
  -- nnoremap('<leader>df', '<cmd>Telescope dap frames<cr>', "List frames")
  -- nnoremap('<leader>dh', '<cmd>Telescope dap commands<cr>', "List commands")
end


M.start = start

return M
