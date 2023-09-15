local opts = {
	wrap = false,
	termguicolors = true,
	number = true,
	relativenumber = true,
	showmatch = true,
	ignorecase = true,
	hlsearch = true,
	incsearch = true,
	cb = 'unnamedplus'

}

local bopts = {
	tabstop = 2,
	expandtab = true,
	shiftwidth = 2,
	autoindent = true
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- Set options from table
for opt, val in pairs(bopts) do
	vim.bo[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)
