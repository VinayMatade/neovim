return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        -- parsers you want installed
        ensure_installed = {
          'lua',
          'python',
          'c',
          'cpp',
          'javascript',
          'html',
          'css',
          'bash',
          'json',
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      }
    end,
  },
}
