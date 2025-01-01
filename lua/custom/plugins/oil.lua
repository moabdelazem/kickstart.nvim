return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      -- Floating window configuration
      float = {
        enabled = true, -- Enable floating window
        border = 'rounded', -- Set the border style
        width = 0.5, -- Set the width to 50% of the screen width
        height = 0.5, -- Set the height to 50% of the screen height
        win_options = {
          winblend = 10, -- Set transparency level (0: opaque, 100: fully transparent)
        },
      },
    },
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- Keymaps for navigation
    config = function(_, opts)
      require('oil').setup(opts)

      -- Set keymaps for oil.nvim
      vim.keymap.set('n', '-', require('oil').open, { desc = 'Open parent directory with oil.nvim' })
      vim.keymap.set('n', '<leader>e', function()
        -- Open current directory with oil.nvim
        require('oil').open '.'
      end, { desc = 'Open current directory with oil.nvim' })
    end,
  },
}
