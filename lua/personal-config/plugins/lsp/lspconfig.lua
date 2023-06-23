local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
    return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    keymap.set("n", "gf", ":Lspsaga lsp_finder<CR>", opts)
    keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
    keymap.set("n", "gd", ":Lspsaga peek_definition<CR>", opts)
    keymap.set("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
    keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
    keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts)
    keymap.set("n", "<leader>d", ":Lspsaga show_line_diagnosis<CR>", opts)
    keymap.set("n", "<leader>cd", ":Lspsaga show_cursor_diagnosis<CR>", opts)
    keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts)
    keymap.set("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", opts)
    keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts)
    keymap.set("n", "<leader>o", ":LSoutlineToggle<CR>", opts)

    if client.name == "tsserver" then
        keymap.set("n", "<leader>rf", ":TypesriptRenameFile<CR>")
    end

end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

typescript.setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach
    }
})

