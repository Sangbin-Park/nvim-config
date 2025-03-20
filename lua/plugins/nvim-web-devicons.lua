return {
    "nvim-tree/nvim-web-devicons",
    config = function()
        require("nvim-web-devicons").setup({
            -- 사용자 지정 아이콘 설정 (파일 유형별 오버라이드)
            override = {
                zsh = {
                    icon = "",
                    color = "#428850",
                    cterm_color = "65",
                    name = "Zsh"
                }
            },
            -- 아이콘별 다른 색상을 사용할지 여부 (기본값: true)
            color_icons = true,
            -- 기본 아이콘 활성화 (기본값: false)
            default = true,
            -- 파일명과 확장자를 엄격하게 매칭할지 여부 (기본값: false)
            strict = true,
            -- 다크 또는 라이트 테마 설정 (nil 가능, "dark" 또는 "light" 지정 가능)
            variant = "dark",  -- "light" 또는 "dark"로 설정 가능
            -- 파일 이름에 따른 아이콘 오버라이드 (strict 모드에서만 적용)
            override_by_filename = {
                [".gitignore"] = {
                    icon = "",
                    color = "#f1502f",
                    name = "Gitignore"
                }
            },
            -- 확장자에 따른 아이콘 오버라이드 (strict 모드에서만 적용)
            override_by_extension = {
                ["log"] = {
                    icon = "",
                    color = "#81e043",
                    name = "Log"
                }
            },
            -- 운영 체제별 아이콘 오버라이드 (strict 모드에서만 적용)
            override_by_operating_system = {
                ["apple"] = {
                    icon = "",
                    color = "#A2AAAD",
                    cterm_color = "248",
                    name = "Apple"
                }
            }
        })
    end
}

