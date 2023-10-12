local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- MY PERSONAL PLUGINS
  {
    "numToStr/Comment.nvim",
    keys = { "gc", "gb" },
  },

  {
    "michaeljsmith/vim-indent-object",
    lazy = false,
    enabled = true,
    -- "TimUntersberger/neogit",
    -- init = function()
    --   require("neogit").setup()
    -- end,
  },

  {
    "TimUntersberger/neogit",
    init = function()
      require("neogit").setup()
    end,
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function ()

      local actions = require("telescope.actions")
      local fb_actions = require("telescope._extensions.file_browser.actions")

      return {
        extensions_list = {"file_browser"},
        extensions = {
          file_browser = {
            theme = "ivy",
            path = "%:p:h",
            hide_parent_dir = true,
            hidden = true,
            grouped = true,
            mappings = {
              ["i"] = {
                -- your custom insert mode mappings
                ["<C-a>"] = fb_actions.create,
              },
              ["n"] = {
                --your custom normal mode mappings
                ["q"] = actions.close,
                ["h"] = fb_actions.goto_parent_dir,
                ["l"] = actions.select_default,
                ["a"] = fb_actions.create,
                ["m"] = fb_actions.move,
                ["y"] = fb_actions.copy,
                ["x"] = fb_actions.remove,
                ["r"] = fb_actions.rename,
                ["<backspace>"] = fb_actions.toggle_hidden,
                ["."] = fb_actions.goto_cwd,
              },
            },
          },
        },
      }
    end
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "github/copilot.vim",
    -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- config = function()
    --   require("nvim-surround").setup({
    --     -- Configuration here, or leave empty to use defaults
    --   })
    -- end
  }
}

-- require("telescope").load_extension("")

return plugins
