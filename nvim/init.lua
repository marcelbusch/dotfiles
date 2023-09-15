 -- Handle plugins with lazy.nvim
require("core.lazy")

-- General Neovim keymaps
require("core.keymaps")

-- Other options
require("core.options")




-- local o = vim.o
-- local wo = vim.wo
-- local bo = vim.bo
-- 
-- o.compatible = false    -- disable compatibility to old-time vi
-- o.showmatch = true      -- show matching 
-- o.ignorecase = true     -- case insensitive 
-- o.mouse = 'nvi'         -- middle-click paste with 
-- o.hlsearch = true       -- highlight search 
-- o.incsearch = true      -- incremental search
-- bo.tabstop = 2           -- number of columns occupied by a tab 
-- bo.softtabstop = 2       -- see multiple spaces as tabstops so <BS> does the right thing
-- bo.expandtab = true      -- converts tabs to white space
-- bo.shiftwidth = 2        -- width for autoindents
-- bo.autoindent = true     -- indent a new line the same amount as the line just typed
-- wo.number = true         -- add line numbers
-- wo.relativenumber = true
-- wo.cc = 80               -- set an 80 column border for good coding style
-- o.cb = 'unnamedplus'    -- clipboard 
-- 
-- 
-- vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
-- 
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable", -- latest stable release
--     lazypath,
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)
-- 
-- 
-- require("lazy").setup({
--   { "folke/which-key.nvim",
--     event = "VeryLazy",
--     init = function()
--       vim.o.timeout = true
--       vim.o.timeoutlen = 500
--     end,
--     opts = {
--       -- your configuration comes here
--     }
--   },
--   { "folke/neoconf.nvim", cmd = "Neoconf" },
--   -- { "folke/neodev.nvim", opts = {} },
--   { "ellisonleao/gruvbox.nvim", priority = 1000 },
--   { "neovim/nvim-lspconfig" },
--   {
--     'nvimdev/lspsaga.nvim',
--     config = function()
--         require('lspsaga').setup({})
--     end,
--     dependencies = {
--  --       'nvim-treesitter/nvim-treesitter' -- optional
--  --       'nvim-tree/nvim-web-devicons'     -- optional
--     }
-- }
-- 
-- }
-- )
-- 
-- 
-- -- {{{ lsp
-- -- Setup language servers.
-- local lspconfig = require('lspconfig')
-- lspconfig.pyright.setup {}
-- 
-- -- Global mappings.
-- -- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
-- 
-- -- Use LspAttach autocommand to only map the following keys
-- -- after the language server attaches to the current buffer
-- vim.api.nvim_create_autocmd('LspAttach', {
--   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
--   callback = function(ev)
--     -- Enable completion triggered by <c-x><c-o>
--     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
-- 
--     -- Buffer local mappings.
--     -- See `:help vim.lsp.*` for documentation on any of the below functions
--     local opts = { buffer = ev.buf }
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
--     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
--     vim.keymap.set('n', '<space>wl', function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, opts)
--     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
--     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
--     vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--     vim.keymap.set('n', '<space>f', function()
--       vim.lsp.buf.format { async = true }
--     end, opts)
--   end,
-- })
-- -- }}}
-- -- {{{ colorschemea
-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
-- -- }}}
