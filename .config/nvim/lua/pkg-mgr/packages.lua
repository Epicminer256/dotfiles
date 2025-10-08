return {
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	{
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function()
	    require("nvim-treesitter.configs").setup {
	      ensure_installed = { "lua", "go", "python", "bash", "javascript", "html" }, -- languages you want
	      highlight = {
		enable = true,              -- Enable syntax highlighting
		additional_vim_regex_highlighting = false,
	      },
	      indent = { enable = true },  -- Optional: better indentation
	    }
	  end
	}
}
