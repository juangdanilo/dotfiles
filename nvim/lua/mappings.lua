require "nvchad.mappings"

------------------------------------- Global Vars -------------------------------------------
vim.g.mapleader = " " -- Set the leader key to <space>
vim.g.maplocalleader = " " -- Set the localleader key to <space>

local map = vim.keymap.set
local nomap = vim.keymap.del

------------------------------------- Insert Mode -------------------------------------------

-- Navigate within insert mode
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

map("i", "<C-b>", "<ESC>^i", { desc = "Move to the beginning of the line" })
map("i", "<C-e>", "<End>", { desc = "Move to the end of the line" })

-- use jj to exit insert mode
map("i", "jk", "<ESC>", { desc = "Escape insert mode", nowait = true })

------------------------------------- Normal Mode -------------------------------------------

-- Switch between windows
map("n", "<C-h>", "<C-w>h", { desc = "Move to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to the right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to the window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to the window above" })

-- Save the file
map("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

-- Copy the whole file
map("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy the entire file to clipboard" })

-- Copy selection
map("", "<leader>y>", '"+y', { desc = "Copy the selected lines to clipboard" })

-- Paste clipboard
map("n", "<leader>p", '"+p', { desc = "Paste after cursor from clipboard" })
map("n", "<leader>P", '"+P', { desc = "Paste before cursor from clipboard" })

-- Clear search highlight
map("n", "<Esc>", "<cmd> noh <CR>", { desc = "Clear search highlights" })

-- Jumplist back/forward
map("n", "<C-->", "<C-o>", { desc = "Jump back" })
map("n", "<C-=>", "<C-i>", { desc = "Jump forward" })

-- Toggle line numbers (commented, but kept for reference)
-- map("n", "<leader>n", "<cmd> set nu! <CR>", { desc = "Toggle line numbers" })
-- map("n", "<leader>rn", "<cmd> set rnu! <CR>", { desc = "Toggle relative line numbers" })

-- Smooth scrolling for wrapped lines
map("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true, desc = "Move down (handle wrapped lines)" })
map("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true, desc = "Move up (handle wrapped lines)" })
map("n", "<Up>", 'v:count == 0 ? "gk" : "k"', { expr = true, desc = "Move up (handle wrapped lines)" })
map("n", "<Down>", 'v:count == 0 ? "gj" : "j"', { expr = true, desc = "Move down (handle wrapped lines)" })

-- Open a new buffer
map("n", "<leader>b", "<cmd> enew <CR>", { desc = "Open a new buffer" })

-- Undo Tree Command
map("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle UndoTree", silent = true })

-- Remove 'u' key for undo (disabled, but kept for reference)
-- map("n", "u", "", { desc = "Disable undo key" })

-- Delete single character without copying into register
map("n", "x", '"_x')

-- Increment/Decrement numbers
map("n", "<leader>+", "<C-a>", { desc = "Increment number" })
map("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Disable the spacebar key's default behavior in Normal and Visual modes
-- map("n", "<Space>", "<Nop>", { desc = "Disable space key's default behaviour", silent = true })
-- map("v", "<Space>", "<Nop>", { desc = "Disable space key's default behaviour", silent = true })

-- Dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })

-- Telescope
map("n", "ff", "<cmd> Telescope find_files previewer=false <CR>", { desc = "Find files" })
map(
  "n",
  "fa",
  "<cmd> Telescope find_files follow=true no_ignore=true hidden=true previewer=true <CR>",
  { desc = "Find all" }
)
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc = "Live grep" })
map("n", "fm", "<cmd> Telescope resume <CR>", { desc = "Resume Search" })
map("n", "fb", "<cmd> Telescope buffers <CR>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>", { desc = "Help page" })
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>", { desc = "Find oldfiles" })
map("n", "fs", "<cmd> Telescope current_buffer_fuzzy_find <CR>", { desc = "Find in current buffer" })
map("n", "fp", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- Telescope bookmarks
map("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "Telescope bookmarks" })

-- Telescope Git
map("n", "<leader>gc", "<cmd> Telescope git_commits <CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd> Telescope git_status <CR>", { desc = "Git status" })

-- Leetcode
-- map("n", "<leader>lo", "<cmd> Leet open <CR>", { desc = "Opens current question in browser" })
-- map("n", "<leader>lr", "<cmd> Leet run <CR>", { desc = "Run currently opened question" })
-- map("n", "<leader>ls", "<cmd> Leet submit <CR>", { desc = "Submit currently opened question" })
-- map("n", "<leader>lc", "<cmd> Leet submit <CR>", { desc = "Opens console pop-up for current question" })

------------------------------------- Visual Mode -------------------------------------------

-- Navigation
map("v", "<Up>", 'v:count == 0 ? "gk" : "k"', { expr = true, desc = "Move up (handle wrapped lines)" })
map("v", "<Down>", 'v:count == 0 ? "gj" : "j"', { expr = true, desc = "Move down (handle wrapped lines)" })

-- Indentations
map("v", "<", "<gv", { desc = "Indent line left and keep selection" })
map("v", ">", ">gv", { desc = "Indent line right and keep selection" })

-- Replace without copying replaced text in visual mode
map("v", "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { silent = true, desc = "Paste without overwriting the register" })

------------------------------------- Visual-line (x) Mode -------------------------------------------

-- Navigation
map("x", "j", 'v:count == 0 ? "gj" : "j"', { expr = true, desc = "Move down (handle wrapped lines)" })
map("x", "k", 'v:count == 0 ? "gk" : "k"', { expr = true, desc = "Move up (handle wrapped lines)" })

-- Replace without copying replaced text in visual-line mode
map("x", "p", 'p:let @+=@0<CR>:let @"=@0<CR>', { silent = true, desc = "Paste without overwriting the register" })
