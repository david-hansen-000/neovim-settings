vim.g.mapleader = " "

local keymap = vim.keymap

-- replace escape key with k j 
keymap.set("i", "kj", "<ESC>")

-- turn highlights off ie. whatever is currently hightlighted like with searching
-- will lose their highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- do not copy into register when deleting by character 
-- keymap.set("n", "x", "_x")

-- will increment the number by the cursor
keymap.set("n", "<leader>+", "<C-a>")

-- will decrement the number by the cursor
keymap.set("n", "<leader>-", "<C-x>")

-- save file
keymap.set("n", "<leader>w", ":w<CR>")

-- split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")

-- split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")

-- make split windows equal
keymap.set("n", "<leader>se", "<C-w>=")

-- close the split
keymap.set("n", "<leader>sx", ":close<CR>")

-- open a new tab
keymap.set("n", "<leader>to", ":tabnew<CR>")

-- close current tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")

-- go to the next tab
keymap.set("n", "<leader>tn", ":tabn<CR>")

-- go to the previous tab
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- toggle the Neovim File Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>et", "<C-w>h")

-- telescope keymap settings
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

