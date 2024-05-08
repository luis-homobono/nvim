return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>ga", ":Git fetch --all -p<CR>", { desc = "Git fetch" })
    vim.keymap.set("n", "<leader>gl", ":Git pull<CR>", { desc = "Git pull" }) -- fetch all
    vim.keymap.set("n", "<leader>G", ":Git<CR>", { desc = "Git integration" }) -- fetch all
  end,
}
