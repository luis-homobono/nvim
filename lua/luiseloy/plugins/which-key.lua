return {
  -- display popup for help keys
  "folke/which-key.nvim",
  event = "VeryLazy", -- this is load before don't important for UI
  config = function()
    -- timeout for load plugin before the UI
    vim.o.timeout = true
    vim.o.timeoutlen = 500
    local wk = require("which-key")
    wk.register({
      b = { name = "Buffers manager" },
      d = { name = "Debugger manager" },
      e = { name = "File explorer" },
      f = { name = "Files and buffers manager" },
      g = { name = "Git manager" },
      G = { name = "Git integration" },
      h = { name = "Git blame" },
      q = { name = "Quit" },
      s = { name = "Splits manager" },
      t = { name = "Tabs manager" },
      w = { name = "Session manager" },
      x = { name = "Trouble assistant" },
    }, { prefix = "<leader>" })
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
