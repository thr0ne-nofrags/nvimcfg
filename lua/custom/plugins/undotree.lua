return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>u', function()
      vim.cmd.UndotreeToggle()

      vim.cmd 'wincmd p'

      local current_width = vim.api.nvim_win_get_width(0)
      local new_width = math.floor(current_width * 1.75)
      vim.api.nvim_win_set_width(0, new_width)
    end)
  end,
}
