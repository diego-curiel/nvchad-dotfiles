local lsp = { "biome", "emmetls", "jsonls", "luals", "pyright", "intelephense" }

local formatters = { "stylua", "autoflake", "autopep8", "prettier", "duster" }

return {
  ensure_installed = vim.list_extend(lsp, formatters),
  auto_update = true,
  run_on_start = true,

  automatic_enable = {
    exclude = formatters,
  },
}
