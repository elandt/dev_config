-- See `:help options` for details, and more available options
vim.opt.backup = false			      	            -- Disables creating a backup file
vim.opt.clipboard = "unnamedplus"		            -- Allows neovim to access the system clipboard
vim.opt.cmdheight = 2				                    -- Defines height of command line
vim.opt.completeopt = { "menuone", "noselect" }	-- Mostly just for cmp
vim.opt.conceallevel = 0			                  -- Makes `` visible in markdown files
vim.opt.fileencoding = "utf-8"			            -- Encode files as UTF-8
vim.opt.hlsearch = true				                  -- Highlight all matches from search
vim.opt.ignorecase = true			                  -- Ignores case in search
vim.opt.mouse = "a"				                      -- Allow the mouse to be used within neovim
vim.opt.pumheight = 10				                  -- Defines height of pop-up menu
vim.opt.showmode = true				                  -- Enables/Disables showing the current neovim mode (i.e. --INSERT--); default: true
vim.opt.showtabline = 2				                  -- Always show tabs - Note: tabs are groups of windows
vim.opt.smartcase = true			                  -- Enables/Disables smart case
vim.opt.smartindent = true			                -- Enable/Disables smart indenting (context aware)
vim.opt.splitbelow = true			                  -- Forces hortizontal splits to always open below current window
vim.opt.splitright = true			                  -- Forces vertical splits to always open to the right of the current window
-- vim.opt.swapfile = false			                  -- Enables/Disables creating a swapfile; Commented out because I'm not sure what it means
vim.opt.timeoutlen = 500			                  -- Time to wait for a mapped sequence to complete (in ms); May want to bump to 1000
vim.opt.undofile = true				                  -- Enables/Disables persistent undo
vim.opt.updatetime = 300			                  -- Faster completion; default: 4000 ms
vim.opt.writebackup = false			                -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true			                  -- Enables/Disables converting tabs to spaces
vim.opt.shiftwidth = 2				                  -- The number of spaces to insert for each indentation
vim.opt.tabstop = 2		    		                  -- The number of spaces to insert for each <tab>
vim.opt.cursorline = true			                  -- Enables/Disables highlighting the current line
vim.opt.number = true			  	                  -- Enables/Disables line numbers
vim.opt.relativenumber = false			            -- Enables/Disables relative line numbers
vim.opt.numberwidth = 4				                  -- Specifies width of line numbers column; default 4
vim.opt.signcolumn = "yes"			                -- Enables/Disables the sign column; may cause text to shift if not enabled
vim.opt.wrap = false				                    -- Enables/Disables line wrapping
vim.opt.scrolloff = 8				                    -- Minimum number of lines above and below cursor
vim.opt.sidescrolloff = 8			                  -- Minimum number of columns left/right of cursor

vim.opt.shortmess:append "c"			              -- Add `c` to the list for the `shortmess` option

vim.cmd "set whichwrap+=<,>,[,],h,l"            -- Also umm?
vim.cmd [[set iskeyword+=-]]                    -- Tells neovim to treat words joined by a dash ("-") as a single word, for example when using `dw`; should be the vim script equivalent of the :append used on `shortmess`
