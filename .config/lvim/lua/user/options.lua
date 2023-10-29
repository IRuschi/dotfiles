vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- disable comment jump to next line
-- https://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
vim.cmd [[autocmd BufNewFile,BufRead,BufEnter * setlocal formatoptions-=cro]]

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

-- key mappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
--# split with (h)orizontal
lvim.keys.normal_mode["<C-W>h"] = ":split<CR>"

-- don't open root directory
lvim.builtin.project.manual_mode = true
-- keep active for lazygit

lvim.builtin.terminal.active = true

lvim.builtin.which_key.mappings["v"] = {
  name = "Visual",
  t = { "<cmd>:set wrap!<cr>", "Toggle text wrap" },
}

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })