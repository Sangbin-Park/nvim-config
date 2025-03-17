return {
    "kdheepak/lazygit.nvim",
    lazy = true,  -- Lazy loading (Neovim 시작 시 바로 로드되지 않고, 실행 시 로드됨)
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    dependencies = { "nvim-lua/plenary.nvim" },  -- 필수 의존성 플러그인
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }  -- 기존 <leader>lg → <leader>gg 변경
    }
}

