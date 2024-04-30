return {
  -- debugger
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
    -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#python
    -- https://github.com/mfussenegger/nvim-dap-python
    -- https://github.com/mfussenegger/nvim-dap/blob/master/doc/dap.txt
    -- https://github.com/rcarriga/nvim-dap-ui?tab=readme-ov-file

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    local keymap = vim.keymap
    keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle breakpoint for debugger" })
    keymap.set("n", "<Leader>db", dap.set_breakpoint, { desc = "Set breakpoint" })
    keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue debugger" })
  end,
}
