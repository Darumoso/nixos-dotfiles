local opt = vim.opt


-- Extra settings
opt.autoread = true --When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again.
opt.termguicolors = true --Enables 24-bit RGB color in the TUI.

opt.scrolloff = 3 --Minimal number of screen lines to keep above and below the cursor.
opt.wrap = false --Disables wrapping text

opt.number = true --Shows rows numbers
opt.relativenumber = true --Show the line number relative to the line with the cursor in front of each line.

opt.cursorline = true --Highlight the text line of the cursor with CursorLine

-- tabs & indentation
opt.tabstop = 4 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.list = true --By default, show tabs as ">", trailing spaces as "-", and non-breakable space characters as "+".
opt.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
-- Makes neovim and host OS clipboard play nicely with each other
opt.clipboard:append("unnamedplus")

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.splitright = true
opt.splitbelow = true

-- Preserve view while jumping
opt.jumpoptions = 'view'

--Hide bold, italics, etc on norg
opt.conceallevel = 2

-- turn off swapfile
opt.swapfile = false
