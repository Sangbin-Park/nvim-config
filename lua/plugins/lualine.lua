return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },  -- 아이콘 지원 플러그인
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },  
                always_show_tabline = false,
                globalstatus = true,
            },
            sections = {
                -- ✅ "NORMAL" 동그라미 제거 후 삼각형 유지
                lualine_a = { 
                    { 'mode', 
                        fmt = function(str) return ' ' .. str .. ' ' end,  
                        color = function()
                            local mode_color = {
                                n = { bg = "#98c379", fg = "#000000" }, -- Normal (녹색)
                                i = { bg = "#61afef", fg = "#000000" }, -- Insert (파랑)
                                v = { bg = "#e5c07b", fg = "#000000" }, -- Visual (노랑)
                                c = { bg = "#e06c75", fg = "#000000" }, -- Command (빨강)
                                r = { bg = "#d19a66", fg = "#000000" }, -- Replace (주황)
                            }
                            return mode_color[vim.fn.mode()] or { bg = "#56b6c2", fg = "#000000" }
                        end,
                        separator = { left = '', right = '' } -- ✅ 삼각형 구분선 추가
                    }
                },
                lualine_b = { 'filename' }, 
                lualine_c = {},
                lualine_x = { 'encoding', 'fileformat', 'filetype' }, 
                lualine_y = { 'progress' },
                lualine_z = { 'location' } 
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = { 'filename' },
                lualine_c = {},
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            extensions = {}
        }
    end
}

