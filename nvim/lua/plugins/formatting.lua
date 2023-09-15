return {
	{
		"tenxsoydev/tabs-vs-spaces.nvim",
		opts = {
			indentation = "spaces",
		},
	},
	{
		"mhartington/formatter.nvim",
		opts = {
			filetype = {
				-- lua = {
				-- 	require("formatter.filetypes.lua").stylua,
				-- },
				-- python = {
				-- 	require("formatter.filetypes.python").black,
				-- },
				-- blade = {
				-- 	require("formatter.filetypes.blade").blade,--[[ (keywords: ) ]]
				-- },
				-- c = {
				-- 	require("formatter.filetypes.c").clang, -- (keywords: , c#, c++, json, java, javascript)
				-- },
				-- html = {
				-- 	require("formatter.filetypes.html").htmlbeautifier,--[[ (keywords: , ruby) ]]
				-- },
				-- python = {
				-- 	require("formatter.filetypes.python").isort,--[[ (keywords: ) ]]
				-- },
				-- lua = {
				-- 	require("formatter.filetypes.lua").stylua,--[[ (keywords: , luau) ]]
				-- },
				-- yaml = {
				-- 	require("formatter.filetypes.yaml").yamlfmt,--[[ (keywords: ) ]]
				-- },
			},
		},
	},
}
