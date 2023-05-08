local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-p>', function() ui.nav_file(1) end) -- Go to first file
vim.keymap.set('n', '<C-n>', function() ui.nav_file(2) end) -- Go to second file
vim.keymap.set('n', '<C-o>', function() ui.nav_file(3) end) -- Go to third file

vim.keymap.set('n', '<C-b>', function() ui.nav_file(4) end) -- Go to forth file
