vim.opt.termguicolors = true
require("config.keymap")
require("config.lazy")
require("config.settings")
require("config.filetype")

local sock = vim.fn.expand("~/.cache/nvim-locator.sock")
pcall(vim.fn.serverstart, sock)
