return {
    {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({
                "ruff", 
                "lua_ls",
                "bashls",
                "gopls"
            })
    end
    }
}
