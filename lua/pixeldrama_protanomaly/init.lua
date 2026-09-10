-- PixelDrama ProtAnomaly colorscheme
local M = {}

-- Groups that are pure empty canvas (no text/symbols of their own) — safe to
-- drop `bg` on so they fall through to the terminal's default background and
-- pick up whatever alpha the terminal emulator applies there (e.g. WezTerm's
-- window_background_opacity). Everything else (syntax colors, Search,
-- Visual, StatusLine, Pmenu, Telescope panels, diagnostics, ...) keeps its
-- real bg and stays fully opaque.
M.TRANSPARENT_CANVAS_GROUPS = {
  'Normal', 'NormalNC', 'NormalFloat', 'FloatBorder',
  'SignColumn', 'FoldColumn', 'EndOfBuffer', 'CursorLineNr', 'TabLineFill',
}

function M.load(opts)
  opts = opts or {}
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'pixeldrama_protanomaly'

  local p = require('pixeldrama_protanomaly.palette')
  local build_highlights = require('pixeldrama_protanomaly.highlights')

  local hl = build_highlights(p)

  local transparent = opts.transparent
  if transparent == nil then
    transparent = vim.g.pixeldrama_protanomaly_transparent
  end
  if transparent then
    for _, group in ipairs(M.TRANSPARENT_CANVAS_GROUPS) do
      if hl[group] then
        hl[group].bg = nil
      end
    end
  end

  local set_hl = vim.api.nvim_set_hl
  for group, gopts in pairs(hl) do
    set_hl(0, group, gopts)
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

-- Flips vim.g.pixeldrama_protanomaly_transparent and repaints immediately.
-- Bind it to a key yourself, e.g.:
--   vim.keymap.set('n', '<leader>tt', require('pixeldrama_protanomaly').toggle_transparent, { desc = '[T]oggle [T]ransparency' })
function M.toggle_transparent()
  vim.g.pixeldrama_protanomaly_transparent = not vim.g.pixeldrama_protanomaly_transparent
  M.load()
end

return M
