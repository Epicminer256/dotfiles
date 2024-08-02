vim.keymap.set("n", "<leader>j", function()
	require("harpoon.ui").toggle_quick_menu()
end)

vim.keymap.set("n", "<leader>k", function()
	require("harpoon.mark").add_file()
end)

vim.keymap.set("n", "<leader>h", function()
	require("harpoon-ui").nav_prev()
end)

vim.keymap.set("n", "<leader>l", function()
	require("harpoon-ui").nav_next()
end)
