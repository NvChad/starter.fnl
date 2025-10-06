-- [nfnl] fnl/mappings.fnl
require("nvchad.mappings")
local map = vim.keymap.set
map("n", ";", ":", {desc = "CMD enter command mode"})
return map("i", "jk", "<ESC>")
