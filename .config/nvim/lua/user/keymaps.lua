local opts = { noremap = true, silent = true}         -- Table of options to apply to key mappings

local term_opts = { silent = true }                   -- Table of options to apply to terminal related key mappings

-- Assign the function name to a local variable; less to type
local keymap = vim.api.nvim_set_keymap

-- Remap the leader key from the default '\' to <space>; may want to try ',' or ';' at some point
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- Normal = n
-- Insert = i
-- Visual = v
-- Visual Block = x
-- Terminal = t
-- Command = c

-- Normal Mode
-- Changing window navigation
keymap("n", "<C-h>", "<C-w>h", opts)          -- Left
keymap("n", "<C-j>", "<C-w>j", opts)          -- Down
keymap("n", "<C-k>", "<C-w>k", opts)          -- Up
keymap("n", "<C-l>", "<C-w>l", opts)          -- Right

-- Open file explorer to the left
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- Resizing windows using arrow keys
keymap("n", "<C-Up>", ":resize -2<CR>", opts)               -- Resize up
keymap("n", "<C-Down>", ":resize +2<CR>", opts)             -- Resize down
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)    -- Resize left
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)   -- Resize right

-- Navigating between Buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)          -- Switch to next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)      -- Switch to previous buffer

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)   -- Move current line down
keymap("n", "<A-k>", ":m .-2<CR>==", opts)   -- Move current line up

-- Insert Mode
-- Press jk quickly to exit Insert mode
keymap("i", "jk", "<ESC>", opts)

-- Move text up and down
keymap("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)   -- Move current line up
keymap("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)   -- Move current line down

-- Visual Mode
-- Stay in indent mode
keymap("v", "<", "<gv", opts)                     -- What does this do?      
keymap("v", ">", ">gv", opts)                     -- What does this do?

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)        -- Move current line down
keymap("v", "<A-k>", ":m .-2<CR>==", opts)        -- Move current line up
keymap("v", "p", '"_dP', opts)                    -- Holds on to existing value in clipboard; neovim defaults to replacing your clipboard entry with whatever you pasted over 

-- Move text up and down
-- Visual Block Mode
keymap("x", "J", ":m '>+1<CR>gv-gv", opts)     -- Move current block down
keymap("x", "K", ":m '<-2<CR>gv-gv", opts)     -- Move current block up
keymap("x", "<A-j>", ":m '>+1<CR>gv-gv", opts)  -- Move current block down
keymap("x", "<A-k>", ":m '<-2<CR>gv-gv", opts) -- Move current block up
