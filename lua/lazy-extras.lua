-- Additional configuration (keybinds/options) for Lazy-installed plugins
--


-- leap.nvim (https://github.com/ggandor/leap.nvim)
--
--vim.keymap.set({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
--vim.keymap.set({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
--vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')
--vim.keymap.del({ "x", "o" }, "x")
--vim.keymap.del({ "x", "o" }, "X")
vim.keymap.set({'n', 'x', 'o'}, 'ss',  '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, 'SS',  '<Plug>(leap-backward)')
vim.keymap.set({'n', 'x', 'o'}, 'gss', '<Plug>(leap-from-window)')
