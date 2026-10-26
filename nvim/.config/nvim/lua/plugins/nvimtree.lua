return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, opts)
      opts.view = opts.view or {}
      opts.view.side = "left"
      opts.view.width = 35
      return opts
    end,
  },
}
