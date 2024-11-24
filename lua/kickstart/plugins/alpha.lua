return {
  'goolord/alpha-nvim',
  requires = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local startify = require 'alpha.themes.startify'

    startify.section.header.val = {
      [[                               __                ]],
      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
      [[ / _ `\  / __`\/' _ `\/\ \/\ \\/\ \ /' __` __`\  ]],
      [[/\ \/\ \/\  __//\ \/\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      [[\ \_\ \_\ \____\ \_\ \_\ \___/  \ \_\ \_\ \_\ \_\]],
      [[ \/_/\/_/\/____/\/_/\/_/\/__/    \/_/\/_/\/_/\/_/]],
    }

    startify.section.top_buttons.val = {
      startify.button('e', 'New file', ':ene <BAR> startinsert <CR>'),
      startify.button('f', 'Find file', ':Telescope find_files<CR>'),
      startify.button('r', 'Recent files', ':Telescope oldfiles<CR>'),
      startify.button('q', 'Quit', ':qa<CR>'),
    }

    alpha.setup(startify.config)
  end,
}
