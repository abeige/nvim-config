local status_ok lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

-- register a handler that will be called for all installe dservers
-- alternatively, you may also register handlers on specific server instances instead
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require("adam.lsp.handlers").on_attach,
        capabilities = require("adam.lsp.handlers").capabilities,
    }

    if server.name == "jsonls" then
        local jsonls_opts = require("adam.lsp.settings.jsonls")
        opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    end

    if server.name == "sumneko_lua" then
        local sumneko_opts = require("adam.lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    -- this setup() function is exactly the same as lspconfig's setup function
    server:setup(opts)
end)

