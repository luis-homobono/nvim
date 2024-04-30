return {
  -- fuzzy finder over list
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        path_display = { "smart" }, -- identify specific file
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
    keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
    -- Git telescope maps
    keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Git files" })
    keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Show git commits" })
    keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Show git branches" })
    keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Show git status with diff" })
    keymap.set("n", "<leader>gst", builtin.git_stash, { desc = "Show files in stash" })
    -- Treesitter integration
    keymap.set("n", "<leader>ts", builtin.treesitter, { desc = "List functions and variables" })
  end,
}
