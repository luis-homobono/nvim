-- set lazy path for plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- add runtimepaht
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "luiseloy.plugins" }, { import = "luiseloy.plugins.lsp" } }, {
  -- check for updates
  checker = { enable = true,
    notify = false,
  },
  -- disable notify for changes
  change_detection = {
    notify = false,
  },
})
