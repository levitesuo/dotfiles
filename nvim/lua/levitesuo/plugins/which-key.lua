return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
      preset = 'helix',
  },
  config = function (_, opts)
      local wk = require('which-key')
      wk.add({
          { '<leader>f', group = 'find' },
      })
      wk.setup(opts)

  end,

}
