---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["Q"] = {function () require("nvchad_ui.tabufline").close_buffer() end, "close buffer"},
    ["<C-p>"] = { ":Telescope git_files<CR>", "FIle browser", opts = { nowait = true } },
    ["<C-z>"] = { ":Telescope file_browser<CR> <ESC>", "FIle browser", opts = { nowait = true } },
    ["<Leader>ff"] = { ":Telescope find_files<CR>", "FIle browser", opts = { nowait = true } },

    -- Git
    ["gss"] = { function () require("neogit").open() end, "open git manager"},
    ["gsv"] = { function () require("neogit").open({ kind = "vsplit" }) end, "open git manager"},
    ["gsf"] = { function () require("neogit").open({ kind = "floating" }) end, "open git manager"},
  }
}

-- more keybinds!

return M
