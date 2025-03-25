opt = vim.opt

-- tab/indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- visual
opt.number = true                -- 라인 번호 표시
opt.relativenumber = false       -- 상대 번호 끄기
opt.cursorline = true            -- 현재 줄 강조
opt.termguicolors = true         -- true color 지원
opt.signcolumn = "yes"

-- etc
opt.encoding = "UTF-8"
opt.cmdheight = 2
opt.scrolloff = 10
opt.mouse:append("a")
