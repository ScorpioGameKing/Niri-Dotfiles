local builtin = require('telescope.builtin')
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

-- Set the leader Key
vim.g.mapleader = " "

-- Quick move to the explorer
vim.keymap.set("n", "<leader>lk", vim.cmd.Ex)

-- Telescope Binds
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find Git managed files' })
vim.keymap.set('n', '<leader>gf', builtin.live_grep, { desc = 'Telescope live grep' })

-- Harpoon Binds
vim.keymap.set("n", "<leader>hh", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end)
vim.keymap.set("n", "<leader>hg", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-u>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-o>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-p>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-J>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-K>", function() harpoon:list():next() end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Add Keys to open splits from Harpoon
harpoon:extend({
  UI_CREATE = function(cx)
    vim.keymap.set("n", "<C-v>", function()
      harpoon.ui:select_menu_item({ vsplit = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-x>", function()
      harpoon.ui:select_menu_item({ split = true })
    end, { buffer = cx.bufnr })

    vim.keymap.set("n", "<C-t>", function()
      harpoon.ui:select_menu_item({ tabedit = true })
    end, { buffer = cx.bufnr })
  end,
})
