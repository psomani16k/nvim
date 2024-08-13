return {
	"rmagatti/auto-session",
	config = function()
		local session = require("auto-session")
		session.setup({
			auto_restore_enabled = false,
			auto_session_supress_dir = { "~/","~/Downloads","~/Documents" },
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
		keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for cwd" })
	end,
}
