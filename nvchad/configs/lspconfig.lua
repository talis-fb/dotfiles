local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- if you just want default config for the servers then put them in a table
--
-- local lspconfig = require "lspconfig"
-- local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "rust_analyzer", "ansiblels", "dockerls", "docker_compose_language_service", "golangci_lint_ls" }
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end

-- Configuração dos LSP
local lspconfig = require('lspconfig')
local servers = {
    { 'tsserver' },
    -- { 'denols' },
    { 'lua_ls' },
    { 'jdtls' },
    { 'rust_analyzer' },
    { 'html' },
    { 'jsonls' },
    { 'cssls' },
    { 'clangd' },
    {"ansiblels" },
    {"dockerls" },
    {"docker_compose_language_service" },
    {"golangci_lint_ls" },
    {"gopls" },
    {"nil_ls" },
    { 'pyright',
        {
            settings = {
                python = {
                    analysis = {
                        autoSearchPaths = true,
                        extraPaths = { '../' },
                    },
                    autoComplete = {
                        extraPaths = '../',
                    }
                }
            }
        }
    },
}

for _, server in ipairs(servers) do
    local lsp = server[1]
    local additional_settings = server[2]
    local setup = {
        on_attach = on_attach,
        capabilities = capabilities
    }

    if additional_settings then
        for key, value in pairs(additional_settings) do
            setup[key] = value
        end
    end

    lspconfig[lsp].setup(setup)
end


-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA
-- CONFIG PADRAI DE LUA


require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    Lua = {
      runtime = {
        version =  "Lua 5.1"
      },
      diagnostics = {
        globals = { "vim", "kong" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
          [vim.fn.stdpath "data" .. "/lazy/extensions/nvchad_types"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
          [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
          -- [vim.fn.expand("$HOME/.luarocks/share/lua/5.1")] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}


-- 
-- lspconfig.pyright.setup { blabla}





-- dofile(vim.g.base46_cache .. "lsp")
-- require "nvchad_ui.lsp"
--
-- local M = {}
-- local utils = require "core.utils"
--
-- -- export on_attach & capabilities for custom lspconfigs
--
-- M.on_attach = function(client, bufnr)
--   client.server_capabilities.documentFormattingProvider = false
--   client.server_capabilities.documentRangeFormattingProvider = false
--
--   utils.load_mappings("lspconfig", { buffer = bufnr })
--
--   if client.server_capabilities.signatureHelpProvider then
--     require("nvchad_ui.signature").setup(client)
--   end
--
--   if not utils.load_config().ui.lsp_semantic_tokens then
--     client.server_capabilities.semanticTokensProvider = nil
--   end
-- end
--
-- M.capabilities = vim.lsp.protocol.make_client_capabilities()
--
-- M.capabilities.textDocument.completion.completionItem = {
--   documentationFormat = { "markdown", "plaintext" },
--   snippetSupport = true,
--   preselectSupport = true,
--   insertReplaceSupport = true,
--   labelDetailsSupport = true,
--   deprecatedSupport = true,
--   commitCharactersSupport = true,
--   tagSupport = { valueSet = { 1 } },
--   resolveSupport = {
--     properties = {
--       "documentation",
--       "detail",
--       "additionalTextEdits",
--     },
--   },
-- }
--
--
-- require("lspconfig").lua_ls.setup {
--   on_attach = M.on_attach,
--   capabilities = M.capabilities,
--
--   settings = {
--     Lua = {
--       runtime = {
--         version =  "Lua 5.1"
--       },
--       diagnostics = {
--         globals = { "vim" },
--       },
--       workspace = {
--         library = {
--           [vim.fn.expand "$VIMRUNTIME/lua"] = true,
--           [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
--           [vim.fn.stdpath "data" .. "/lazy/extensions/nvchad_types"] = true,
--           [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
--           [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
--           [vim.fn.expand("$HOME/.luarocks/share/lua/5.1")] = true,
--         },
--         maxPreload = 100000,
--         preloadFileSize = 10000,
--       },
--     },
--   },
-- }
--
--
-- -- 
-- -- lspconfig.pyright.setup { blabla}
