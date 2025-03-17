-- ~/.config/nvim/lua/plugins/nvim-web-devicons.lua

return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override = {
        zsh = {
          icon = "",
          color = "#FFD700",
          cterm_color = "178",
          name = "Zsh"
        }
      },
      default = true,
    })
  end
}

