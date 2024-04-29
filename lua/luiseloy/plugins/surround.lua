return {
  -- modify elements surrounded with tags or symbols
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
  -- ys -- surround
  -- ysiw -- surrounda word
  -- ds -- delete caractes
  -- dst -- delete tag
  -- ys8jt -- add tag
  -- cst -- change tag
}
