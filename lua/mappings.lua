-- [nfnl] Compiled from fnl/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
require("nvchad.mappings")
local map = vim.keymap.set
map("n", ";", ":", {desc = "CMD enter command mode"})
return map("i", "jk", "<ESC>")
