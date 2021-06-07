lua <<EOF

local nvim_lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({on_attach=on_attach})

nvim_lsp.bashls.setup({on_attach=on_attach})

nvim_lsp.pyls.setup({on_attach=on_attach})

nvim_lsp.texlab.setup({
    on_attach = on_attach;
    settings = {
        build = {
            executable = "tectonic";
            onSave = true;
        };
    };
})

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = { prefix = "❰", spacing = 2 },
    signs = { priority = 99 },
    update_in_insert = true,
  }
)

EOF

" Enable inlay type hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = ': ', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({show_header = false})

sign define LspDiagnosticsSignError text=✕ texthl=LspDiagnosticsSignError
sign define LspDiagnosticsSignWarning text=! texthl=LspDiagnosticsSignWarning
sign define LspDiagnosticsSignInformation text=> texthl=LspDiagnosticsSignInformation
sign define LspDiagnosticsSignHint text=→ texthl=LspDiagnosticsSignHint
