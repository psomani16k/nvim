vim.g.mapleader = " "
local keymap = vim.keymap

-- tab creation and traversal
keymap.set("n", "<leader>tj", "<cmd>tabp<CR>", { desc = "Go to the tab on the left of the current tab" })
keymap.set("n", "<leader>tk", "<cmd>tabn<CR>", { desc = "Go to the tab on the right of the current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Make a new tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" })

-- misc
keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "Clear Search Highlights" })

-- shortcuts to various things....
keymap.set("n", "<leader>ee", "<cmd>Ex<CR>", { desc = "Switch to NetRW"})
