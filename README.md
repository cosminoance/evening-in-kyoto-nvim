# pixeldrama-protanomaly-nvim

A [Neovim](https://neovim.io) colorscheme: PixelDrama ProtAnomaly, a
protanomaly-calibrated terminal theme built on Monokai Soda. Hand-written,
mirroring the colors from the `pixeldrama-protanomaly` repo's
`palette.yaml`/`chrome.yaml` -- that repo is the source of truth for the
actual hex values and the story behind each one; this repo is just the
Neovim port, packaged to install on its own.

## Install

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  url = "https://github.com/cosminoance/pixeldrama-protanomaly-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'pixeldrama_protanomaly'
  end,
}
```

`url` is spelled out explicitly (rather than the shorter `"user/repo"` shorthand) so it's easy to repoint if this ever moves off GitHub.

With [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  'https://github.com/cosminoance/pixeldrama-protanomaly-nvim',
  config = function()
    vim.cmd.colorscheme 'pixeldrama_protanomaly'
  end,
}
```

(packer has no separate `url` key — it accepts a full URL directly wherever the `"user/repo"` shorthand would otherwise go.)

`lazy = false` / no lazy-loading trigger matters here -- a colorscheme has
to be active before anything else renders, so it shouldn't wait on an
event. `priority = 1000` makes lazy.nvim load it before other plugins that
might set up highlights of their own.

Without a plugin manager: clone this repo and add it to your
runtimepath directly:

```lua
vim.opt.rtp:prepend '/path/to/pixeldrama-protanomaly-nvim'
vim.cmd.colorscheme 'pixeldrama_protanomaly'
```

## What's covered

Core syntax (`Comment`/`String`/`Function`/etc.), Treesitter `@`-captures,
LSP semantic tokens, diagnostics, and: `blink.cmp`, `mini.nvim`,
`telescope.nvim`, `gitsigns.nvim`, `which-key.nvim`, `mason.nvim`,
`fidget.nvim`, `todo-comments.nvim`. Also sets Neovim's `:terminal` ANSI
colors to match the palette.

Everything applies eagerly on `:colorscheme` load -- no lazy-plugin-trigger
system. A lazy-loaded plugin just needs its highlight groups added to
`lua/pixeldrama_protanomaly/highlights.lua`; Neovim only reads a group's
highlight when it's actually referenced.

Not covered (add to `highlights.lua` if you use one of these):
neo-tree, nvim-tree, indent-blankline, bufferline, dashboard, noice,
notify, toggleterm.

## Extending

Add or edit entries in `lua/pixeldrama_protanomaly/highlights.lua`'s
returned table -- a plain `group_name -> vim.api.keyset.highlight` map, no
framework. Group names come from `:help highlight-groups`,
`:help treesitter-highlight-groups`, `:help lsp-highlight`,
`:help diagnostic-highlights`, or the target plugin's own `:help`/README.
