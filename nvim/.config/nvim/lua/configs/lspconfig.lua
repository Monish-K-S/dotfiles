require("nvchad.configs.lspconfig").defaults()

-- JDTLS with Lombok support
vim.lsp.config("jdtls", {
  cmd = {
    "jdtls",
    "--jvm-arg=-javaagent:/Users/monishgowda/.m2/repository/org/projectlombok/lombok/1.18.48/lombok-1.18.48.jar",
  },
})

-- Enable language servers
for _, server in ipairs({
  "html",
  "cssls",
  "gopls",
  "jdtls",
  "pyright",
  "vtsls",
  "eslint",
  "r_language_server",
  "rust_analyzer",
}) do
  vim.lsp.enable(server)
end
