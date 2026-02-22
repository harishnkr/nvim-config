local M = {}
local nmap = function(keys, func, desc)
  if desc then
    desc = 'DAP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { desc = desc })
end


function M.dap()
  nmap('<leader>du', function() require('dapui').toggle() end, '[D]ap[U]I Toggle')
  nmap('<leader>db', "<cmd>DapToggleBreakpoint<CR>", '[D]ap Toggle [B]reakpoint')
  nmap('<leader>dc', "<cmd>DapContinue<CR>", '[D]ap [C]ontinue')
  nmap('<leader>do', "<cmd>DapStepOver<CR>", '[D]ap Step [O]ver')
  nmap('<leader>di', "<cmd>DapStepInto<CR>", '[D]ap Step [I]nto')
  nmap('<leader>dt', "<cmd>DapTerminate<CR>", '[D]ap [T]erminate')
end

function M.dap_python()
  nmap('<leader>dpr', function()
    require('dap-python').test_method()
  end, '[D]ap [P]ython [R]un')
end

return M
