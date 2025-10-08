for i=1,9 do
	vim.keymap.set("n", "<leader>" .. i, function()
		require("harpoon.ui").nav_file(i)
	end)
end

vim.keymap.set("n", "<leader>j", function()
	require("harpoon.ui").toggle_quick_menu()
end)

vim.keymap.set("n", "<leader>k", function()
	require("harpoon.mark").add_file()
end)

vim.keymap.set("n", "<leader>h", function()
	require("harpoon.ui").nav_prev()
end)
vim.keymap.set("n", "<leader>l", function()
	require("harpoon.ui").nav_next()
end)

for i=1,9 do
	vim.keymap.set("n", "<leader>t" .. i, function()
		require("harpoon.term").gotoTerminal(i)
	end)
end


