return {
  -- add manage for lsp and servers
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- add with i or delete with x on :Mason manager
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        -- "prismals",
        "pyright", -- python
        "eslint", -- js
        "angularls", -- angular
        "bashls", -- bash
        "dockerls", -- docker
        "emmet_ls", -- emmet
        -- "gopls", -- go
        "jsonls", -- json
        -- "jinja_lsp", -- jinja, rust
        "remark_ls",
        -- "intelephense", -- php
        "pyright", -- "pylyzer", "jedi_language_server", "pylsp"
        -- "r_language_server", -- r
        "sqlls", -- sql
        "typos_lsp", -- all
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    })
  end,
}
