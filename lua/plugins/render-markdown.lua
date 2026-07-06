return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	ft = { "markdown" }, -- lazy load: only activates when opening a .md file
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		anti_conceal = {
			enabled = false,
			above = 0,
			below = 0,
		},
		on = {
			attach = function()
				vim.opt_local.colorcolumn = ""
				vim.opt_local.wrap = true
				vim.opt_local.linebreak = true
			end,
		},
	},
	keys = {
		{
			"<leader>tm",
			"<cmd>RenderMarkdown toggle<cr>",
			ft = "markdown",
			desc = "Toggle markdown render",
		},
	},
}
