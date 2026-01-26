return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    ".git/",
    ".luarc.json",
    ".luarc.jsonc",
  },
  Lua = {
    diagnostics = {
      globals = { "vim" },
    },
    runtime = {
      version = "LuaJIT",
    },
    workspace = {
      library = vim.api.nvim_get_runtime_file("", true),
      checkThirdParty = false,
    },
  },
}
