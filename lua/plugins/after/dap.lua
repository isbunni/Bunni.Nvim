local dap = require('dap')

dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = {"-i", "dap"}
}

dap.configurations.asm = {
  {
    name = "Debug ASM",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
  },
}

-- 
--
vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').step_over() end)
vim.keymap.set('n', '<Leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<Leader>dj', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>dt', function() require('dap').toggle_breakpoint() end)


--
--
local dapui = require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

