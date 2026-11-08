return {
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      color_icons = true,
      default = true,
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = function(_, opts)
      opts.view = {
        side = "right",
        width = 35,
      }

      opts.renderer = opts.renderer or {}
      opts.renderer.icons = opts.renderer.icons or {}
      opts.renderer.icons.webdev_colors = true
      opts.renderer.icons.show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      }

      return opts
    end,
  },
}
