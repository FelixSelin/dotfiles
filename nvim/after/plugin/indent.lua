
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E67E80" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#DBBC7F" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7FBBB3" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#E69875" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A7C080" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D699B6" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#83C092" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
require("ibl").setup { scope = { highlight = highlight } }

