--Enable (broadcasting) snippet capability for completion
--The lsp is vscode-langservers-extracted
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').jsonls.setup{ }
