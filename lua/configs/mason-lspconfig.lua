local lsp = {
  "biome",
  "emmet_language_server",
  "jsonls",
  "lua_ls",
  "pyright",
  "intelephense",
}

return {
  ensure_installed = lsp,
  auto_update = true,
  run_on_start = true,
}
