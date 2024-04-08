return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}

    -- Add keymaps for Neotree
    vim.keymap.set('n', '<leader>e', '<cmd>Neotree position=current toggle<cr>', { desc = 'Toggle Neotree' })
    vim.keymap.set('n', '<leader>E', '<cmd>Neotree focus<cr>', { desc = 'Focus Neotree ' })
    vim.keymap.set('n', '<leader>eg', '<cmd>Neotree git_status position=current<cr>', { desc = 'Neotree git status' })
  end,
}
