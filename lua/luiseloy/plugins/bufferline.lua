return {
  -- bufferline for tabs
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      -- mainten tabbing functionality and set slant style
      mode = "tabs",
      separator_style = "slant",
    },
  },
}
