return {
  'APZelos/blamer.nvim',
  config = function()
    require('nvim-autopairs').setup {}
    vim.g.blamer_enabled = true
  end,
}
