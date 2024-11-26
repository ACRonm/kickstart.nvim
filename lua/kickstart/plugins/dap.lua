return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'leoluz/nvim-dap-go',
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
  },
  config = function()
    local dap = require 'dap'
    local ui = require 'dapui'

    require('dapui').setup()
    require('dap-go').setup()

    require('nvim-dap-virtual-text').setup {
      prefix = ' ',

      display_callback = function(variable)
        local value = string.lower(variable.value)

        if #variable.value > 15 then
          return ' ' .. string.sub(value, 1, 15) .. '...'
        end

        return ' ' .. value
      end,
    }
  end,
}
