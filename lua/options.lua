-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`


--
-- Global Options
--

-- leader/local leader must come first b/c of dependencies
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- rest of global options
vim.g.autoformat = true
vim.g.bigfile_size = 1024 * 1024 * 1.5 -- 1.5 MB
vim.g.deprecation_warnings = false
vim.g.lazygit_config = true
vim.g.lazyvim_picker = "auto"
vim.g.lazyvim_statuscolumn = {
    folds_open = false, -- show fold sign when fold is open
    folds_githl = false, -- highlight fold sign with git sign color
}
vim.g.markdown_recommended_style = 0
vim.g.root_lsp_ignore = { "copilot" }
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }


--
-- Local Options
--

vim.opt.autowrite = true -- Enable auto write
vim.opt.breakindent = true
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
vim.opt.confirm = true -- Confirm to save changes before exiting modified buffer
vim.opt.cursorline = true
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.foldlevel = 99
--vim.opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
vim.opt.formatoptions = "jcroqlnt" -- tcqj
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.ignorecase = true
--vim.opt.inccommand = "nosplit" -- preview incremental substitute
vim.opt.inccommand = 'split'
vim.opt.jumpoptions = "view"
vim.opt.laststatus = 3 -- global statusline
vim.opt.linebreak = true -- Wrap lines at convenient points
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.mouse = ''
vim.opt.number = true -- Print line number
vim.opt.pumblend = 10 -- Popup blend
vim.opt.pumheight = 10 -- Maximum number of entries in a popup
vim.opt.relativenumber = true
-- vim.opt.scrolloff = 4 -- Lines of context
vim.opt.scrolloff = 10
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
vim.opt.shiftround = true -- Round indent
vim.opt.shiftwidth = 2 -- Size of an indent
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })
vim.opt.showmode = false
vim.opt.sidescrolloff = 8 -- Columns of context
vim.opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.opt.smartcase = true
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.spelllang = { "en" }
vim.opt.spelloptions:append("noplainbuffer")
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true
--vim.opt.statuscolumn = [[%!v:lua.require'lazyvim.util'.ui.statuscolumn()]]
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.termguicolors = true -- True color support
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 250
vim.opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
vim.opt.wildmode = "longest:full,full" -- Command-line completion mode
vim.opt.winminwidth = 5 -- Minimum window width
vim.opt.wrap = false -- Disable line wrap


-- Sync clipboard between OS and Neovim
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)


-- vim: ts=2 sts=2 sw=2 et
