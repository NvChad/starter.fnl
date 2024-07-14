-- [nfnl] Compiled from fnl/plugins/init.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  return require("configs.conform")
end
local function _2_()
  local cfg = require("nvchad.configs.lspconfig")
  cfg.defaults()
  return require("configs.lspconfig")
end
local function _3_(_, opts)
  table.insert(opts.sources, 1, {name = "conjure"})
  return (require("cmp")).setup(opts)
end
local function _4_()
  local surround = require("nvim-surround")
  local config = {}
  return surround.setup(config)
end
return {{"stevearc/conform.nvim", config = _1_}, {"neovim/nvim-lspconfig", config = _2_}, {"williamboman/mason.nvim", opts = {ensure_installed = {"lua-language-server", "stylua", "html-lsp"}}}, {"nvim-treesitter/nvim-treesitter", opts = {ensure_installed = {"vim", "lua", "vimdoc", "fennel"}}}, {"hrsh7th/nvim-cmp", config = _3_}, {"NvChad/nvcommunity"}, {"kylechui/nvim-surround", event = "VeryLazy", config = _4_}, {"PaterJason/cmp-conjure", ft = {"fennel"}, dependencies = {"Olical/conjure", ft = {"fennel"}}}}
