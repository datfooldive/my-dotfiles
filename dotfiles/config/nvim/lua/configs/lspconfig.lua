require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "jsonls", "ts_ls", "phan", "gopls", "pyright" }

local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.html.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "html", "php", "blade" },
}

lspconfig.cssls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
}

lspconfig.phpactor.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = { "phpactor", "language-server" },
  filetypes = { "php", "blade" },
}

local tailwindcss_default_config = lspconfig.tailwindcss.document_config.default_config

lspconfig.tailwindcss.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = vim.tbl_extend("force", tailwindcss_default_config.filetypes, { "php", "blade" }),
  settings = {
    tailwindCSS = {
      lint = {
        invalidApply = false,
      },
    },
  },
}
