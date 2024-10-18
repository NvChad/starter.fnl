-- [nfnl] Compiled from fnl/configs/lspconfig.fnl by https://github.com/Olical/nfnl, do not edit.
local nvcfg = require("nvchad.configs.lspconfig")
nvcfg.defaults()
local lspconfig = require("lspconfig")
local servers = {"html"}
lspconfig.fennel_language_server.setup({on_attach = nvcfg.on_attach, on_init = nvcfg.on_init, capabilities = nvcfg.capabilities, filetypes = {"fennel"}, root_dir = lspconfig.util.root_pattern("fnl", "lua"), single_file_support = true, settings = {fennel = {diagnostics = {globals = {"vim"}, workspace = {library = vim.api.nvim_list_runtime_paths()}}}}})
for _, lsp in ipairs(servers) do
  local serv = lspconfig[lsp]
  serv.setup({on_attach = nvcfg.on_attach, on_init = nvcfg.on_init, capabilities = nvcfg.capabilities})
end
return nil
