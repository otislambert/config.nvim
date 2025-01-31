-- rust tools configuration

return {
  'simrat39/rust-tools.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'mfussenegger/nvim-dap',
  },
  config = function(_, _)
    local rt = require 'rust-tools'

    rt.setup {
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set('n', '<leader>t', rt.hover_actions.hover_actions, { buffer = bufnr })
          vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
    }
  end,
}
