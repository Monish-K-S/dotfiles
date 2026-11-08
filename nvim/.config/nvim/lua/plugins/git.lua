

return {
  -- Git signs inside the editor
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },

      current_line_blame = false,

      preview_config = {
        border = "rounded",
      },
    },

    keys = {
      {
        "<leader>gp",
        "<cmd>Gitsigns preview_hunk<CR>",
        desc = "Preview Git Hunk",
      },
      {
        "<leader>gs",
        "<cmd>Gitsigns stage_hunk<CR>",
        desc = "Stage Git Hunk",
      },
      {
        "<leader>gr",
        "<cmd>Gitsigns reset_hunk<CR>",
        desc = "Reset Git Hunk",
      },
      {
        "<leader>gb",
        "<cmd>Gitsigns blame_line<CR>",
        desc = "Git Blame",
      },
      {
        "<leader>gd",
        "<cmd>Gitsigns diffthis<CR>",
        desc = "Git Diff",
      },
      {
        "]h",
        function()
          require("gitsigns").next_hunk()
        end,
        desc = "Next Git Hunk",
      },
      {
        "[h",
        function()
          require("gitsigns").prev_hunk()
        end,
        desc = "Previous Git Hunk",
      },
    },
  },
}
