-- neorg configuration

return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  dependencies = { 'nvim-lua/plenary.nvim', 'hrsh7th/nvim-cmp' },
  -- enabled = false,
  config = function()
    require('neorg').setup {
      load = {
        -- loads defaults
        ['core.defaults'] = {},
        -- itero
        ['core.itero'] = {},
        -- concealer
        ['core.concealer'] = {},
        -- directory manager
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
            },
          },
        },
        ['core.completion'] = {
          config = {
            engine = 'nvim-cmp',
            name = '[Neorg]',
          },
        },
      },
    }
  end,
}
