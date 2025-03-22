return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      options = {
        theme = 'gruvbox' -- ✅ 색상 반전 없이 안정적인 테마
      }
    })
  end
}

