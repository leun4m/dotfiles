vim.g.mapleader = " "


vim.keymap.set("n", "<leader>R", "<cmd>split | term java %<cr>")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<cr>")
vim.keymap.set("n", "<leader>b", ":NERDTreeToggle<cr>")

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})

vim.keymap.set('n', '<leader>F', vim.lsp.buf.format, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

