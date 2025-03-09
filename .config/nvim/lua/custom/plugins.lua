return {
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "TimUntersberger/neogit",
    init = function()
      require("neogit").setup()
    end,
  },

  -- AI assistant
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
}

---------------------------------
-- HOW TO USE
---------------------------------
-- local plugins = {
--    ...default plugins...
-- }
--
-- vim.list_extend(plugins, require("custom.plugins"))
--
-- return plugins
