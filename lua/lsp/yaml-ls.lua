-- npm install -g yaml-language-server
require'lspconfig'.yamlls.setup{
	cmd = {"yaml-language-server", "--stdio"},
    on_attach = require'lsp'.common_on_attach,
  -- settings = {
  --   yaml = {
  --     schemas = {
  --       ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "*.yaml",
  --     },
  --   },
  -- }
}

-- require('lspconfig').yamlls.setup {
--   settings = {
--     yaml = {
--       schemas = {
--         ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "*.yaml",
--       },
--     },
--   }
-- }
