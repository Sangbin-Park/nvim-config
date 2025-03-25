return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- colorscheme 적용 직후에 색 덮어쓰기 하도록 autocommand 등록
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "tokyonight",
      callback = function()
        -- 라인 번호
        vim.api.nvim_set_hl(0, "LineNr", {fg = "#9aa5ce"}) -- 일반 줄 번호
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#7aa2f7", bold = true }) -- 현재 줄

        -- 주석 색상 (사이드바 느낌)
        vim.api.nvim_set_hl(0, "Comment", { fg = "#9aa5ce", italic = true })

        -- 현재 줄 하이라이트 (주석 강조 효과)
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2f4a" })
      end,
    })

    -- autocommand 등록 이후 colorscheme 실행해야 콜백이 호출됨!
    vim.cmd("colorscheme tokyonight")
  end,
}

