return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    local bg_transparent = true

    local function apply_tokyonight()
      require('tokyonight').setup {
        transparent = bg_transparent,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }
      vim.cmd 'colorscheme tokyonight'
    end

    apply_tokyonight()

    local function toggle_transparency()
      bg_transparent = not bg_transparent
      apply_tokyonight()
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
