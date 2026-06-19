require("scorpio.remap")

vim.opt.undofile = true
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.tabstop = 4           -- Display width of a tab character
vim.opt.shiftwidth = 4        -- Number of spaces for one indent level
vim.opt.softtabstop = 4       -- Backspace deletes this many spaces at a time   

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"
