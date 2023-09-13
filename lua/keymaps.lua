local keymap = vim.keymap

keymap.set('i', 'jj', '<ESC>', {silent = true})

-- Remap space as leader key
keymap.set('', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Do not yank with x or s
keymap.set('n', 'x', '"_x')
keymap.set('n', 's', '"_s')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', '<leader>te', ':tabedit<Return>', { silent = true })
keymap.set('n', '<leader>to', ':tabnew<Return>', { silent = true })
keymap.set('n', '<leader>tx', ':tabclose<Return>', { silent = true })
keymap.set('n', '<Tab>', ':tabn<Return>', { silent = true })
keymap.set('n', '<S-Tab>', ':tabp<Return>', { silent = true })

-- Split window
keymap.set('n', '<leader>sh', ':split<Return>', { silent = true })
keymap.set('n', '<leader>sv', ':vsplit<Return>', { silent = true })

-- Split term
keymap.set('n', '<leader>h', ':split<Return>:term<Return><S-a>', { silent = true })
keymap.set('n', '<leader>v', ':vsplit<Return>:term<Return><S-a>', { silent = true })

-- Term to normal mode
keymap.set('n', '<leader>x', ':q<Return>', { silent = true })

-- Quit window
keymap.set('t', '<C-x>', '<C-\\><C-n>', { silent = true })

-- Move window
keymap.set('', 'mh', '<C-w>h')
keymap.set('', 'mj', '<C-w>j')
keymap.set('', 'mk', '<C-w>k')
keymap.set('', 'ml', '<C-w>l')

-- Resize window
keymap.set('n', '<C-Left>', '<C-w><')
keymap.set('n', '<C-Down>', '<C-w>-')
keymap.set('n', '<C-Up>', '<C-w>+')
keymap.set('n', '<C-Right>', '<C-w>>')


