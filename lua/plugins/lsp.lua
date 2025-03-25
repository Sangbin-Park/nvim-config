local keyMapper = require("utils.keyMapper").mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" }
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Lua LSP 설정
      lspconfig.lua_ls.setup({})

      -- Clangd 설정 (OpenFOAM용)
      lspconfig.clangd.setup({
        cmd = { "clangd", "--compile-commands-dir=/home/kepco/OpenFOAM-8" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
      })

      -- LSP Hover 시 테두리 적용
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover,
        { border = "rounded" }
      )

      -- LSP 단축키 매핑
      keyMapper("K", vim.lsp.buf.hover)
      keyMapper("gd", vim.lsp.buf.definition)
     -- keyMapper("gr", vim.lsp.buf.references)
      keyMapper("gr", "<cmd>Telescope lsp_references<CR>")
      keyMapper("<leader>ca", vim.lsp.buf.code_action)
    end,
  },
}

