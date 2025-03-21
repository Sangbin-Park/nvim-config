return {
  'nvim-lualine/lualine.nvim',  -- Lualine 플러그인
  dependencies = { 'nvim-tree/nvim-web-devicons' },  -- 아이콘 지원
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'gruvbox',  -- 🔥 Gruvbox 테마 적용
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        -- ✅ 왼쪽 삼각형 제거 + 배경색 & 텍스트 색상 반전
        lualine_a = { 
          { 'mode',
            fmt = function(str) return ' ' .. str .. ' ' end,  -- 공백 유지
            color = function()
              local mode_color = {
                n = { bg = "#000000", fg = "#98c379" }, -- 🔄 Normal (녹색) 반전
                i = { bg = "#000000", fg = "#61afef" }, -- 🔄 Insert (파랑) 반전
                v = { bg = "#000000", fg = "#e5c07b" }, -- 🔄 Visual (노랑) 반전
                c = { bg = "#000000", fg = "#e06c75" }, -- 🔄 Command (빨강) 반전
                r = { bg = "#000000", fg = "#d19a66" }, -- 🔄 Replace (주황) 반전
              }
              local mode = vim.fn.mode()
              return { fg = mode_color[mode].fg, bg = mode_color[mode].bg } -- 🔥 색상 반전 적용
            end,
            separator = { left = '', right = '' }, -- ✅ 왼쪽 삼각형 제거, 오른쪽 유지
            padding = { left = 1, right = 1 } -- ✅ 텍스트가 너무 붙지 않도록 패딩 추가
          }
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {}
    }
  end
}

