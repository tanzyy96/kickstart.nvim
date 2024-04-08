-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- local lspconfig = require 'lspconfig'
--
-- lspconfig.volar.setup {}
-- lspconfig.tsserver.setup {
--   init_options = {
--     plugins = {
--       {
--         name = '@vue/typescript-plugin',
--         location = '/usr/local/lib',
--         languages = { 'javascript', 'typescript', 'vue' },
--       },
--     },
--   },
--   filetypes = {
--     'javascript',
--     'typescript',
--     'vue',
--   },
-- }
return {
  -- alpha dashboard
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },
}
