require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local chat = require "CopilotChat"

map("n", "<A-Up>", ":m .-2<CR>==")
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi")
map("v", "<A-Up>", ":m '<-2<CR>gv=gv")

map("n", "<A-Down>", ":m .+1<CR>==")
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi")
map("v", "<A-Down>", ":m '>+1<CR>gv=gv")

map("n", "<A-S-Up>", "yyp")
map("i", "<A-S-Up>", "<Esc>yypgi")
map("v", "<A-S-Up>", "y`>pgv")

map("n", "<A-S-Down>", "yyP")
map("i", "<A-S-Down>", "<Esc>yyPgi")
map("v", "<A-S-Down>", "y`<Pgv")

map("n", "<C-a>", "ggVG")
map("i", "<C-a>", "<Esc>ggVG")
map("v", "<C-a>", "ggVG")

map("n", "<leader>ct", function()
  chat.toggle()
end)

map("n", "<leader>co", function()
  chat.open()
end)

map("n", "<leader>cc", function()
  chat.close()
end)

map("n", "<leader>cr", function()
  chat.reset()
end)

map("n", "<A-p>", "<cmd>CdProject<cr>")

map({ "n", "v" }, "dd", '"_dd', { noremap = true, silent = true })

map("v", "<C-c>", '"+y', { noremap = true, silent = true })
