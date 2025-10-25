return {
  -- Install tokyonight (available but not loaded by default)
  { 'folke/tokyonight.nvim', lazy = false, priority = 1000 },

  -- Install catppuccin (available but not loaded by default)
  { 'catppuccin/nvim', name = 'catppuccin', lazy = false, priority = 1000 },

  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('gruvbox').setup { contrast = 'hard' }
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        styles = {
          transparency = false,
          italic = false,
        },
      }
    end,
  },
}
