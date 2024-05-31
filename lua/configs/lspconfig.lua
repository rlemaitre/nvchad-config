-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "biome", "yamlls"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}


lspconfig.lua_language_server.setup {}
lspconfig.stylua.setup {}
lspconfig.actionlint.setup {}
lspconfig.ansible_anguage_erver.setup {}
lspconfig.ansible_int.setup {}
lspconfig.awk_anguage_erver.setup {}
lspconfig.bash_ebug_dapter.setup {}
lspconfig.bash_anguage_erver.setup {}
lspconfig.biome.setup {}
lspconfig.buf.setup {}
lspconfig.cspell.setup {}
lspconfig.css_sp.setup {}
lspconfig.css_ariables_anguage_erver.setup {}
lspconfig.deno.setup {}
lspconfig.docker_ompose_anguage_ervice.setup {}
lspconfig.dockerfile_anguage_erver.setup {}
lspconfig.doctoc.setup {}
lspconfig.firefox_ebug_dapter.setup {}
lspconfig.gh.setup {}
lspconfig.gitleaks.setup {}
lspconfig.gitlint.setup {}
lspconfig.gradle_anguage_erver.setup {}
lspconfig.grammarly_anguageserver.setup {}
lspconfig.graphql_anguage_ervice_li.setup {}
lspconfig.helm_s.setup {}
lspconfig.html_sp.setup {}
lspconfig.htmlhint.setup {}
lspconfig.java_ebug_dapter.setup {}
lspconfig.java_anguage_erver.setup {}
lspconfig.jq.setup {}
lspconfig.jq_sp.setup {}
lspconfig.json_sp.setup {}
lspconfig.kotlin_ebug_dapter.setup {}
lspconfig.kotlin_anguage_erver.setup {}
lspconfig.lua_anguage_erver.setup {}
lspconfig.markdown_oc.setup {}
lspconfig.markdownlint.setup {}
lspconfig.markdownlint_li2.setup {}
lspconfig.marksman.setup {}
lspconfig.prettier.setup {}
lspconfig.python_sp_erver.setup {}
lspconfig.shellcheck.setup {}
lspconfig.shfmt.setup {}
lspconfig.smithy_anguage_erver.setup {}
lspconfig.some_ass_anguage_erver.setup {}
lspconfig.sql_ormatter.setup {}
lspconfig.sqlfluff.setup {}
lspconfig.sqlfmt.setup {}
lspconfig.sqlls.setup {}
lspconfig.stylua.setup {}
lspconfig.terraform_s.setup {}
lspconfig.typescript_anguage_erver.setup {}
lspconfig.vale.setup {}
lspconfig.vale_s.setup {}
lspconfig.vim_anguage_erver.setup {}
lspconfig.vscode_ava_ecompiler.setup {}
lspconfig.vue_anguage_erver.setup {}
lspconfig.yaml_anguage_erver.setup {}
lspconfig.yamlfix.setup {}
lspconfig.yamlfmt.setup {}

