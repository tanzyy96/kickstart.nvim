return {
  'mhartington/formatter.nvim',
  config = function()
    require('formatter').setup {
      logging = false,
      filetype = {
        vue = {
          -- prettier sf
          function()
            return {
              exe = 'prettier',
              args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
        javascript = {
          -- prettierd
          function()
            return {
              exe = 'prettierd',
              args = { vim.api.nvim_buf_get_name(0) },
              stdin = true,
            }
          end,
        },
      },
    }
    -- Utilities for creating configurations
    -- local util = require "formatter.util"
    -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
    -- require("formatter").setup({
    --     -- Enable or disable logging
    --     logging = true,
    --     -- Set the log level
    --     log_level = vim.log.levels.DEBUG,
    --     -- All formatter configurations are opt-in
    --     filetype = {
    --         lua = {
    --             require("formatter.filetypes.lua").stylua,
    --             function()
    --                 return {
    --                     exe = "stylua",
    --                     args = {
    --                         "--column-width",
    --                         "120",
    --                         "--indent-type",
    --                         "Spaces",
    --                         "--indent-width",
    --                         "2",
    --                         "--search-parent-directories",
    --                         "--stdin-filepath",
    --                         util.escape_path(util.get_current_buffer_file_path()),
    --                         "--",
    --                         "-",
    --                     },
    --                     stdin = true,
    --                 }
    --             end
    --         },
    --         ["*"] = {
    --             require("formatter.filetypes.any").remove_trailing_whitespace,
    --             function()
    --                 vim.lsp.buf.format({ async = true })
    --             end,
    --         }
    --     }
    -- })
  end,
}
