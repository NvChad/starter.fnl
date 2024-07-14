-- [nfnl] Compiled from fnl/configs/lspconfig.fnl by https://github.com/Olical/nfnl, do not edit.
local nvcfg = require("nvchad.configs.lspconfig")
local lspconfig = require("lspconfig")
local servers = {"html"}
for _, lsp in ipairs(servers) do
  local serv = lspconfig[lsp]
  serv.setup({on_attach = nvcfg.on_attach, on_init = nvcfg.on_init, capabilities = nvcfg.capabilities})
end
return nil
