-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

-- require("nvim")

vim.cmd [[
  set nowrap
  set relativenumber
]]

vim.cmd [[
  nnoremap <Right> <nop>
  vnoremap <Right> <nop>
  inoremap <Right> <nop>
  nnoremap <Left> <nop>
  vnoremap <Left> <nop>
  inoremap <Left> <nop>
  nnoremap <Up> <nop>
  vnoremap <Up> <nop>
  inoremap <Up> <nop>
  nnoremap <Down> <nop>
  vnoremap <Down> <nop>
  inoremap <Down> <nop>
  inoremap jj <Esc>
]]
