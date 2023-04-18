require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    -- "lua_ls",
    "clangd",
  },
})

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.hover = {
  contentFormat = { "markdown", "plaintext" },
}
capabilities.textDocument.signatureHelp = {
  signatureInformation = {
    parameterInformation = {
      labelOffsetSupport = true,
    }
  }
}

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
