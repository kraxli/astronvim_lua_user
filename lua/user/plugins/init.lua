return {
	["declancm/cinnamon.nvim"] = { disable = true },
	["famiu/bufdelete.nvim"] = { disable = true },
	-- ["goolord/alpha-nvim"] = { disable = true },
	["lukas-reineke/indent-blankline.nvim"] = { disable = true },
	["max397574/better-escape.nvim"] = { disable = true },
	["numToStr/Comment.nvim"] = { disable = true },
	["EdenEast/nightfox.nvim"] = require("user.plugins.nightfox"),
	["danymat/neogen"] = require("user.plugins.neogen"),
	["dhruvasagar/vim-table-mode"] = require("user.plugins.vim-table-mode"),
	["echasnovski/mini.nvim"] = require("user.plugins.mini"),
	["ethanholz/nvim-lastplace"] = require("user.plugins.nvim-lastplace"),
	["folke/zen-mode.nvim"] = require("user.plugins.zen-mode"),
	["hrsh7th/cmp-calc"] = require("user.plugins.cmp-calc"),
	["hrsh7th/cmp-emoji"] = require("user.plugins.cmp-emoji"),
	["jbyuki/nabla.nvim"] = require("user.plugins.nabla"),
	["jc-doyle/cmp-pandoc-references"] = require("user.plugins.cmp-pandoc-references"),
	["jose-elias-alvarez/typescript.nvim"] = require("user.plugins.typescript"),
	["kdheepak/cmp-latex-symbols"] = require("user.plugins.cmp-latex-symbols"),
	["lukas-reineke/headlines.nvim"] = require("user.plugins.headlines"),
	["mfussenegger/nvim-dap"] = require("user.plugins.dap"),
	["mickael-menu/zk-nvim"] = require("user.plugins.zk"),
	["mtikekar/nvim-send-to-term"] = require("user.plugins.nvim-send-to-term"),
	["nanotee/sqls.nvim"] = require("user.plugins.sqls"),
	["nvim-telescope/telescope-bibtex.nvim"] = require("user.plugins.telescope-bibtex"),
	["nvim-telescope/telescope-file-browser.nvim"] = require("user.plugins.telescope-file-browser"),
	["nvim-telescope/telescope-hop.nvim"] = require("user.plugins.telescope-hop"),
	["nvim-telescope/telescope-media-files.nvim"] = require("user.plugins.telescope-media-files"),
	["nvim-telescope/telescope-project.nvim"] = require("user.plugins.telescope-project"),
	["nvim-treesitter/nvim-treesitter-textobjects"] = require("user.plugins.nvim-treesitter-textobjects"),
	["p00f/clangd_extensions.nvim"] = require("user.plugins.clangd_extensions"),
	["phaazon/hop.nvim"] = require("user.plugins.hop"),
	["rcarriga/nvim-dap-ui"] = require("user.plugins.dapui"),
	["vitalk/vim-simple-todo"] = require("user.plugins.vim-simple-todo"),
	-- ["wakatime/vim-wakatime"] = require "user.plugins.vim-wakatime",
	["ziontee113/syntax-tree-surfer"] = require("user.plugins.syntax-tree-surfer"),
	["andweeb/presence.nvim"] = require("user.plugins.presence"),
	["akinsho/git-conflict.nvim"] = require("user.plugins.git-conflict"),

	-- -------------------------------------------------------
	-- KRAXLI ADDINGS:
	-- -------------------------------------------------------

	{
		"tpope/vim-fugitive",
		cmd = "Git",
	},

	-- Lsp:
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		-- event = { "BufRead", "BufNew" },
		config = function()
			require("lsp_signature").setup()
			-- require("user.plugins.lsp_signature").config()
		end,
	},

	-- Markdown, Note taking, Writing:

	-- {
	-- 	"dkarter/bullets.vim",
	-- 	ft = { "markdown", "text", "gitcommit", "scratch" },
	-- 	config = function()
	-- 		vim.g.bullets_enabled_file_types = {
	-- 			"markdown",
	-- 			"text",
	-- 			"gitcommit",
	-- 			"scratch",
	-- 		}
	-- 	end,
	-- },

	-- {
	-- 	"ixru/nvim-markdown",
	-- 	ft = { "markdown" },
	-- 	config = function()
	-- 		require("user.plugins.markdown.vim-markdown")
	-- 	end,
	-- },

	-- {
	-- 	"jakewvincent/mkdnflow.nvim",
	-- 	-- rocks = 'luautf8',
	-- 	config = function()
	-- 		require("mkdnflow").setup({
	-- 			-- Config goes here; leave blank for defaults
	-- 		})
	-- 	end,
	-- },

	{
		"SidOfc/mkdx",
		ft = { "markdown", "text", "vimwiki" }, -- vimwiki.markdown
		setup = function()
			require("user.plugins.markdown.mkdx")
		end,
	},
	{
		"machakann/vim-sandwich",
		keys = { "s" },
		event = "BufReadPost",
		config = function()
			require("user.plugins.sandwich")
		end,
	},
	-- {
	-- 	"iamcco/markdown-preview.nvim",
	-- 	run = function()
	-- 		vim.fn["mkdp#util#install"]()
	-- 	end,
	-- 	-- run = "cd app && npm install",  -- does not seem to work on windows
	-- 	ft = "markdown",
	-- 	config = function()
	-- 		require("user.plugins.markdown.markdown_preview")
	-- 	end,
	-- },
	-- {
	-- 	"renerocksai/calendar-vim", -- TODO: lazy loading ft or cmd
	-- 	cmd = { "Calendar" },
	-- 	config = function()
	-- 		require("user.plugins.calendar-vim")
	-- 	end,
	-- },
	-- -- { 'mracos/mermaid.vim', ft = {'markdown', 'vimwiki', 'mermaid'} },
	-- { "chazmcgarvey/vim-mermaid", ft = { "markdown", "vimwiki", "mermaid" } },
	-- {
	-- 	"godlygeek/tabular",
	-- 	ft = { "markdown", "vimwiki" },
	-- },
	--
	-- -- TODO:
	-- {
	-- 	"renerocksai/telekasten.nvim",
	-- 	ft = { "markdown", "vimwiki", "text" },
	-- 	cmd = { "Telekasten", "Tk" },
	-- 	keys = { "<leader>z" },
	-- 	config = function()
	-- 		vim.cmd([[
	--        command! Tk :Telekasten
	--      ]])
	-- 		require("user.plugins.telekasten")
	-- 	end,
	-- 	disable = true,
	-- },
	-- {
	-- 	"lervag/vimtex",
	-- 	ft = "tex",
	-- 	setup = function()
	-- 		require("user.plugins.vimtex")
	-- 	end,
	-- },
	-- {
	-- 	"ekickx/clipboard-image.nvim",
	-- 	cmd = "PasteImg",
	-- 	ft = { "markdown", "text", "vimwiki" },
	-- 	config = function()
	-- 		require("user.plugins.clipboard-image")
	-- 	end,
	-- },
	--
	-- {
	-- 	"nvim-orgmode/orgmode",
	-- 	ft = { "org" },
	-- 	after = "nvim-treesitter",
	-- 	config = function()
	-- 		require("user.plugins.orgmode")
	-- 		-- require('orgmode').setup{}
	-- 	end,
	-- 	disable = true,
	-- },
	-- {
	-- 	"nvim-neorg/neorg",
	-- 	config = function()
	-- 		require("neorg").setup({})
	-- 	end,
	-- },

	-- Colorschemes:
	{ "Th3Whit3Wolf/one-nvim" }, -- lazy by nature
	{ "sonph/onehalf", rtp = "vim" },
	{ "NLKNguyen/papercolor-theme" },
	{ "sainnhe/edge" },
	{ "sainnhe/everforest" },
}

-- ====================================================
-- {
-- "gfeiyou/command-center.nvim",
-- requires = { "nvim-telescope/telescope.nvim" }
-- },
