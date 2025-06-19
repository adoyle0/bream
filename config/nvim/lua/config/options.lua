-- Schedule this to happen after UiEnter for SPEED
vim.schedule(function()
  -- Share clipboard with system
  vim.o.clipboard = 'unnamedplus'
end)

-- Don't wrap
vim.o.wrap = false

-- Adjust completion selection
vim.o.completeopt = 'longest,menuone,noselect'

-- Nicer confirmation warning when quitting without saving, etc
vim.o.confirm = true

-- Highlight the line the cursor is on
vim.o.cursorline = true

-- Turn tabs into spaces
vim.o.expandtab = true

-- Don't highlight search results
vim.o.hlsearch = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Preview substitutions live
vim.o.inccommand = 'split'

-- Make extra whitespace obvious
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Enable mouse mode
vim.o.mouse = 'a'

-- Make line numbers default
vim.o.number = true

-- Use relative line numbers
vim.o.relativenumber = true

-- Keep cursor 10 lines from the bottom
vim.o.scrolloff = 10

-- 4 space indenting
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- Hide mode cause the status line shows it anyway
vim.o.showmode = false

-- How new splits open
vim.o.splitbelow = true
vim.o.splitright = true

-- Be impatient
vim.o.timeoutlen = 300

-- Update cache more often to recover from a crash better
vim.o.updatetime = 250

-- Save undo history
vim.o.undofile = true

-- UI consistency
vim.wo.signcolumn = 'yes'
