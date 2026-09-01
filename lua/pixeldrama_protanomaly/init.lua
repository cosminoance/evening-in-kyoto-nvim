-- PixelDrama ProtAnomaly colorscheme
local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'pixeldrama_protanomaly'

  local p = require('pixeldrama_protanomaly.palette')
  local build_highlights = require('pixeldrama_protanomaly.highlights')

  local set_hl = vim.api.nvim_set_hl
  for group, opts in pairs(build_highlights(p)) do
    set_hl(0, group, opts)
  end

  vim.g.terminal_color_0 = p.bg_dark
  vim.g.terminal_color_8 = p.comment
  vim.g.terminal_color_7 = p.fg
  vim.g.terminal_color_15 = p.fg_bright
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_9 = p.red
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_10 = p.green
  vim.g.terminal_color_3 = p.orange
  vim.g.terminal_color_11 = p.yellow
  vim.g.terminal_color_4 = p.blue
  vim.g.terminal_color_12 = p.blue
  vim.g.terminal_color_5 = p.magenta
  vim.g.terminal_color_13 = p.magenta
  vim.g.terminal_color_6 = p.cyan
  vim.g.terminal_color_14 = p.cyan

  vim.api.nvim_exec_autocmds('ColorScheme', { pattern = vim.g.colors_name })
end

function M.get_palette()
  return require('pixeldrama_protanomaly.palette')
end

return M
