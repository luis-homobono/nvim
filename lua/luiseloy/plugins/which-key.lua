return {
  -- display popup for help keys
  "folke/which-key.nvim",
  event = "VeryLazy", -- this is load before don't important for UI
  init = function()
    -- timeout for load plugin before the UI
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
