return {
  "thinca/vim-quickrun",
  config = function()
    vim.g.quickrun_config = {
      cpp = {
        command = "g++",
        exec = { "%c %s -o %o:r", "./%o:r" },
        outputter = "quickfix",
        errorformat = "%f:%l:%c: %m"
      }
    }

    -- 실행 단축키 설정 (F5)
    vim.api.nvim_set_keymap("n", "<F5>", ":QuickRun<CR>", { noremap = true, silent = true })
  end
}
