return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {

    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "tsserver", "bashls", "clangd", "cssls", "html", "texlab" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
       capabilities = capabilities
      })
      lspconfig.tsserver.setup({
       capabilities = capabilities
      })
      lspconfig.bashls.setup({
       capabilities = capabilities
      })
      lspconfig.clangd.setup({
       capabilities = capabilities
      })
      lspconfig.cssls.setup({
       capabilities = capabilities
      })
      lspconfig.html.setup({
       capabilities = capabilities
      })
      lspconfig.texlab.setup({
       capabilities = capabilities
      })
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
