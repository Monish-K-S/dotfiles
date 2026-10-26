require("nvchad.configs.lspconfig").defaults()

for _, server in ipairs({
  "html",
  "cssls",
  "gopls",
  "jdtls",
  "pyright",
  "vtsls",
  "eslint",
  "r_language_server",
}) do
  vim.lsp.enable(server)
end
-- read :h vim.lsp.config for changing options of lsp servers 
