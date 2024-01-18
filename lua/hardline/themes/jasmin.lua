-- Copyright 2024 Gurvan Debaussart (https://debauss.art) ----------------------
-- Distributed under the MIT license

local c     = require "jasmin.palette"
local cterm = require "jasmin.termcolor"

local inactive = {
  guifg   = c.regular.white,
  guibg   = c.regular.black,
  ctermfg = cterm.regular.white,
  ctermbg = cterm.regular.black,
}

return {
  mode = {
    inactive = inactive,
    normal = {
      guifg   = c.regular.black,
      guibg   = c.regular.green,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.green,
    },
    insert = {
      guifg   = c.regular.black,
      guibg   = c.regular.blue,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.blue,
    },
    replace = {
      guifg   = c.regular.black,
      guibg   = c.regular.cyan,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.cyan,
    },
    visual = {
      guifg   = c.regular.black,
      guibg   = c.regular.magenta,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.magenta,
    },
    command = {
      guifg   = c.regular.black,
      guibg   = c.regular.yellow,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.yellow,
    },
  },
  low = {
    active = {
      guifg   = c.regular.white,
      guibg   = c.regular.black,
      ctermfg = cterm.regular.white,
      ctermbg = cterm.regular.black,
    },
    inactive = inactive,
  },
  med = {
    active = {
      guifg   = c.bright.yellow,
      guibg   = c.regular.black,
      ctermfg = cterm.bright.yellow,
      ctermbg = cterm.regular.black,
    },
    inactive = inactive,
  },
  high = {
    active = {
      guifg   = c.regular.white,
      guibg   = c.regular.black,
      ctermfg = cterm.regular.white,
      ctermbg = cterm.regular.black,
    },
    inactive = inactive,
  },
  error = {
    active = {
      guifg   = c.regular.black,
      guibg   = c.regular.red,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.red,
    },
    inactive = inactive,
  },
  warning = {
    active = {
      guifg   = c.regular.black,
      guibg   = c.regular.yellow,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.yellow,
    },
    inactive = inactive,
  },
  bufferline = {
    separator = inactive,
    current = {
      guifg   = c.regular.black,
      guibg   = c.regular.green,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.green,
    },
    current_modified = {
      guifg   = c.regular.black,
      guibg   = c.regular.blue,
      ctermfg = cterm.regular.black,
      ctermbg = cterm.regular.blue,
    },
    background = {
      guifg   = cterm.white,
      guibg   = cterm.black,
      ctermfg = cterm.regular.white,
      ctermbg = cterm.regular.black,
    },
    background_modified = {
      guifg   = c.regular.blue,
      guibg   = c.regular.black,
      ctermfg = cterm.regular.blue,
      ctermbg = cterm.regular.black,
    },
  },
}
