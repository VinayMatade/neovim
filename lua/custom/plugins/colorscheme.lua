return {
  -- Install tokyonight (available but not loaded by default)
  { 'folke/tokyonight.nvim', lazy = false, priority = 1000 },

  -- Install catppuccin (available but not loaded by default)
  { 'catppuccin/nvim', name = 'catppuccin', lazy = false, priority = 1000 },

  -- Install + set rose-pine as the default
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
      vim.cmd.colorscheme 'rose-pine-dawn' -- 👈 this makes it your default
    end,
  },
}
