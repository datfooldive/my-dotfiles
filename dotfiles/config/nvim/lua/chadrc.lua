---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "carbonfox",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "vscode",
  },

  telescope = {
    style = "borderless",
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
