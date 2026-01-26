require("nvchad.configs.lspconfig").defaults()

vim.lsp.enable {
  "biome", --Javascript, Typescript & JSON
  "emmetls",
  "jsonls",
  "luals",
  "pyright",
}
