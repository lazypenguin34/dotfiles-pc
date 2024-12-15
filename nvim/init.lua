require("config.lazy")

-- Set proper colours for grubox
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Tabs and indentation settings
vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.tabstop = 4          -- Number of spaces that a tab represents
vim.opt.shiftwidth = 4       -- Number of spaces used for indentation
vim.opt.softtabstop = 4      -- Number of spaces used for editing tab characters
vim.opt.smarttab = true      -- Use shiftwidth instead of tabstop when inserting tabs
vim.opt.autoindent = true    -- Copy indent from the current line when starting a new line
vim.opt.smartindent = true   -- Smart auto-indenting for C-like programs

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Remove 'c', 'r', and 'o' from 'formatoptions'. Stops comments from extending on a newline
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions
            - "c" -- Don't auto-wrap comments
            - "r" -- Don't continue comments with Enter
            - "o" -- Don't continue comments with 'o' or 'O'
    end,
})
