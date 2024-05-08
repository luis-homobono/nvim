return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local keymap = vim.keymap
    local gs = require("gitsigns")

    -- Navigation
    keymap.set("n", "]h", gs.next_hunk, { desc = "Next Hunk" })
    keymap.set("n", "[h", gs.prev_hunk, { desc = "Prev Hunk" })

    -- Actions for hunks
    keymap.set("n", "<leader>hs", gs.stage_hunk, { desc = "Stage hunk" })
    keymap.set("n", "<leader>hr", gs.reset_hunk, { desc = "Reset hunk" })
    keymap.set("v", "<leader>hs", function()
      gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end, { desc = "Stage hunk" })
    keymap.set("v", "<leader>gr", function()
      gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
    end, { desc = "Reset hunk" })

    keymap.set("n", "<leader>gS", gs.stage_buffer, { desc = "Stage buffer" })
    keymap.set("n", "<leader>gR", gs.reset_buffer, { desc = "Reset buffer" })

    keymap.set("n", "<leader>gu", gs.undo_stage_hunk, { desc = "Undo stage hunk" })

    keymap.set("n", "<leader>gp", gs.preview_hunk, { desc = "Preview hunk" })

    -- Add line blame
    keymap.set("n", "<leader>hb", function()
      gs.blame_line({ full = true })
    end, { desc = "Blame line" })
    keymap.set("n", "<leader>gB", gs.toggle_current_line_blame, { desc = "Toggle line blame" })

    -- Show diffs
    keymap.set("n", "<leader>gd", gs.diffthis, { desc = "Diff this" })
    keymap.set("n", "<leader>gD", function()
      gs.diffthis("~")
    end, { desc = "Diff this ~" })

    -- Text object
    keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Gitsigns select hunk" })
    gs.setup()
  end,
}
