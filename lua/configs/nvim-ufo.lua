-- Neovim options
local o = vim.o
o.foldcolumn = "1"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true

-- Mapping
local map = vim.keymap.set
map("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
map("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })

-- LSP config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}
local language_servers = vim.lsp.get_clients()
for _, ls in ipairs(language_servers) do
  require("lspconfig")[ls].setup {
    capabilities = capabilities,
  }
end

-- Plugin setup
local opts = {
  open_fold_hl_timeout = 0,
}
require("ufo").setup(opts)
