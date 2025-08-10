require "nvchad.options"

local o = vim.o

o.mousemoveevent = true

vim.filetype.add {
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
}

vim.api.nvim_create_autocmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end,
})

vim.api.nvim_set_hl(0, "IblChar", { fg = "#3B4252" })

rawset(vim, "deprecate", function() end)
