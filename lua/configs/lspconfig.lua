require("nvchad.configs.lspconfig").defaults()
local lspconfig = vim.lsp.config

local servers = {
  ts_ls = {
    filetypes = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
  },
  html = {
    filetypes = {
      "html",
      "javascriptreact",
      "typescriptreact",
    },
  },
  emmet_language_server = {
    "html",
    "javascriptreact",
    "typescript",
  },
  cssls = {},
  pyright = {},
  intelephense = {
    filetypes = {
      "php",
    },
  },
}

for name, opts in pairs(servers) do
  lspconfig(name, opts)
end

-- read :h vim.lsp.config for changing options of lsp servers
