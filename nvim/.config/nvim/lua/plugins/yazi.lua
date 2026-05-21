return {
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			-- 👇 this keymap opens yazi
			{ "<leader>a", "<cmd>Yazi<cr>", desc = "Open yazi" },
		},
		opts = {
			-- optional configuration
		},
	},
}
