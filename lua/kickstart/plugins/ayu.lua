return {
  'shatur/neovim-ayu',
  config = function()
    vim.cmd.colorscheme 'ayu-mirage'

    local overrides = {
      Normal = { bg = 'None' },
      ColorColumn = { bg = 'None' },
      SignColumn = { bg = 'None' },
      Folded = { bg = 'None' },
      FoldColumn = { bg = 'None' },
      CursorLine = { bg = 'None' },
      CursorColumn = { bg = 'None' },
      WhichKeyFloat = { bg = 'None' },
      VertSplit = { bg = 'None' },
    }

    for group, opts in pairs(overrides) do
      vim.api.nvim_set_hl(0, group, opts)
    end
  end,
}

