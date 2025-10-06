-- [nfnl] fnl/configs/conform.fnl
local conform = require("conform")
return conform.setup({formatters_by_ft = {lua = {"stylua"}}})
