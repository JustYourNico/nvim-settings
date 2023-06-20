local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'quick_lint_js',
	'pyright',
	'rust_analyzer',
})

lsp.set_preferences({
    set_lsp_keymaps = false,
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>kws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>kd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>kca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>krr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>krn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
