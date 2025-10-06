-- [nfnl] fnl/configs/lspconfig.fnl
local nvcfg = require("nvchad.configs.lspconfig")
nvcfg.defaults()
local lspconfig = require("lspconfig")
local servers = {"html", "fennel_language_server"}
vim.lsp.config("fennel_language_server", {on_attach = nvcfg.on_attach, on_init = nvcfg.on_init, capabilities = nvcfg.capabilities, filetypes = {"fennel"}, root_dir = lspconfig.util.root_pattern("fnl", "lua"), single_file_support = true, settings = {fennel = {diagnostics = {globals = {"vim"}, workspace = {library = vim.api.nvim_list_runtime_paths()}}}}})
return vim.lsp.enable(servers)
