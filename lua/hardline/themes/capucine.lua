local c = require "capucine.palette"
local cterm = {
  black   = 0,
  white   = 1,
  red     = 2,
  green   = 3,
  yellow  = 4,
  blue    = 5,
  magenta = 6,
  cyan    = 7,
}

local inactive = {
  guifg = c.regular.white,
  guibg =   c.regular.black,
  ctermfg = cterm.white,
  ctermbg = cterm.black,
}

return {
  mode = {
    inactive = inactive,
    normal = {
      guifg   = c.regular.black,
      guibg   = c.regular.green,
      ctermfg = cterm.black,
      ctermbg = cterm.green,
    },
    insert = {
      guifg   = c.regular.black,
      guibg   = c.regular.blue,
      ctermfg = cterm.black,
      ctermbg = cterm.blue,
    },
    replace = {
      guifg = c.regular.black,
      guibg = c.regular.cyan,
      ctermfg = cterm.black,
      ctermbg = cterm.cyan,
    },
    visual = {
      guifg   = c.regular.black,
      guibg   = c.regular.magenta,
      ctermfg = cterm.black,
      ctermbg = cterm.magenta,
    },
    command = {
      guifg   = c.regular.black,
      guibg   = c.regular.orange,
      ctermfg = cterm.black,
      ctermbg = cterm.orange,
    },
  },
  low = {
    active = {
      guifg = c.regular.white,
      guibg = c.regular.black,
      ctermfg = cterm.white,
      ctermbg = cterm.black,
    },
    inactive = inactive,
  },
  med = {
    active = {
      guifg = c.regular.white,
      guibg = c.regular.black,
      ctermfg = cterm.white,
      ctermbg = cterm.black,
    },
    inactive = inactive,
  },
  high = {
    active = {
      guifg = c.regular.white,
      guibg = c.regular.black,
      ctermfg = cterm.white,
      ctermbg = cterm.black,
    },
    inactive = inactive,
  },
  error = {
    active = {
      guifg = c.regular.black,
      guibg = c.regular.red,
      ctermfg = cterm.black,
      ctermbg = cterm.red,
    },
    inactive = inactive,
  },
  warning = {
    active = {
      guifg = c.regular.black,
      guibg = c.regular.yellow,
      ctermfg = cterm.black,
      ctermbg = cterm.yellow,
    },
    inactive = inactive,
  },
  bufferline = {
    separator = inactive,
    current = {
      guifg = c.regular.black,
      guibg = c.regular.green,
      ctermfg = cterm.black,
      ctermbg = cterm.green,
    },
    current_modified = {
      guifg = c.regular.black,
      guibg = c.regular.blue,
      ctermfg = cterm.black,
      ctermbg = cterm.blue,
    },
    background = {
      guifg = cterm.white,
      guibg = cterm.black,
      ctermfg = cterm.white,
      ctermbg = cterm.black,
    },
    background_modified = {
      guifg = c.regular.black,
      guibg = c.regular.blue,
      ctermfg = cterm.black,
      ctermbg = cterm.blue,
    },
  },
}
