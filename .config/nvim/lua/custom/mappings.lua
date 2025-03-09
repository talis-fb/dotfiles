local map = vim.keymap.set

-- Clipboard
map({ "n", "v" }, "--", '"+', { desc = "shortcut for + register to deal with clipboard" })

-- File Manager
map({ "n", "v" }, "<C-z>", "<cmd>Oil<CR>", { desc = "shortcut for + register to deal with clipboard" })

-- Wrapping view
map("n", "-w", "<cmd>set wrap!<CR>", { desc = "Change wrapping state" })

-- git
map("n", "gss", function()
  require("neogit").open()
end, { desc = "Open Git client" })

-- Inspired from line 42 in https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua | Commit f6025f0
map("n", "Q", function()
  local bufs = vim.fn.getbufinfo { buflisted = 1 }
  if #bufs > 1 then
    require("nvchad.tabufline").close_buffer()
  else
    vim.cmd "q" -- Quit Neovim if there's only one buffer left
  end
end, { desc = "Close buffer or quit Neovim" })

---- Nv Chad default maps
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map("n", ";y", '%y+', { desc = "copy in clipboard" })
