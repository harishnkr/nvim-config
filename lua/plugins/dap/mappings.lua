local M = {}
local nmap = function(keys, func, desc)
  if desc then
    desc = 'DAP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { desc = desc })
end


function M.dap()
  nmap('<leader>db',  "<cmd> DapToggleBreakpoint <CR>" , ' [D]ap Toggle [B]reakpoint')
end

function M.dap_python()
  nmap('<leader>dpr', function()
      require('dap-python').test_method()
    end,'[D]ap [P]ython [R]un')
end

return M
