local c     = require "jasmin.palette"
local cterm = require "jasmin.termcolor"

local M = {}

local hl = {

  -- Basics
  Normal      = { fg = c.regular.white,          bg = c.regular.black,
             ctermfg = cterm.regular.white, ctermbg = cterm.regular.black },
  SignColumn  = { link = "Normal" },
  FoldColumn  = { link = "Normal" },
  EndOfBuffer = { fg = c.regular.black,          bg = c.regular.black,
             ctermfg = cterm.regular.black, ctermbg = cterm.regular.black},
  Cursor      = { reverse = true },
  -- WarningMsg
  TabLine      = { link = "Normal" },
  LineNr       = { fg = c.regular.white,          bg = c.regular.black,
              ctermfg = cterm.regular.white, ctermbg = cterm.regular.black},
  LineNrAbove  = { link = "LineNr"     },
  LineNrBelow  = { link = "LineNr"     },
  CursorLineNr = { bold = true,
                   fg = c.bright.magenta,          bg = c.regular.black,
              ctermfg = cterm.bright.magenta, ctermbg = cterm.regular.black },
  CursorLine   = { bg = c.bright.black, ctermbg = cterm.bright.black },
  CursorColumn = { link = "CursorLine" },
  ColorColumn  = { link = "CursorLine" },
  Visual       = { link = "CursorLine" },
  Whitespace   = { fg = c.bright.red,             bg = c.bright.red,
              ctermfg = cterm.bright.red,    ctermbg = cterm.bright.red },
  Search       = { fg = c.regular.white,          bg = c.bright.black,
              ctermfg = cterm.regular.white, ctermbg = cterm.bright.black },
  CurSearch    = { bg = c.bright.black,      ctermbg = cterm.bright.black },

  StatusLine   = { link = "Normal" },
  StatusLineNC = { link = "Normal" },
  WinSeparator = { fg = c.bright.black,          bg = c.regular.black,
              ctermfg = cterm.bright.black, ctermbg = cterm.regular.black },

  TabLineFill = { link = "Normal" },
  Directory   = { fg = c.regular.blue, bold= true,
             ctermfg = cterm.regular.blue },
  ErrorMsg    = { bg = c.regular.red, fg = c.regular.white },

  -- IncSearch
  Pmenu        = { link = "Search"    },
  PmenuSel     = { link = "CurSearch" },
  Substitute   = { bg = c.regular.pink,    ctermfg = cterm.regular.pink     },

  -- Syntax
  String       = { fg = c.bright.green,    ctermfg = cterm.bright.green     },
  Character    = { link = "String"                                          },
  Constant     = { fg = c.bright.yellow,   ctermfg = cterm.bright.yellow    },
  Number       = { link = "Constant"                                        },
  Float        = { link = "Constant"                                        },
  Boolean      = { link = "Constant"                                        },
  Type         = { fg = c.bright.green,    ctermfg = cterm.bright.green     },
  Structure    = { fg = c.regular.blue,    ctermfg = cterm.regular.blue     },
  StorageClass = { link = "Type"                                            },
  Identifier   = { fg = c.regular.white                                     },
  PreProc      = { fg = c.regular.pink,   ctermfg = cterm.bright.magenta    },
  PreCondit    = { link = "PreProc"                                         },
  Include      = { link = "PreProc"                                         },
  Keyword      = { fg = c.regular.magenta, ctermfg = cterm.regular.magenta  },
  Define       = { fg = c.regular.pink,    ctermfg = cterm.bright.magenta   },
  Typedef      = { link = "Type"                                            },
  Exception    = { fg = c.regular.red,     ctermfg = cterm.regular.red      },
  Conditional  = { link = "Keyword"                                         },
  Repeat       = { link = "Keyword"                                         },
  Statement    = { fg = c.regular.magenta, ctermfg = cterm.regular.magenta  },
  Macro        = { link = "PreProc"                                         },
  Error        = { fg = c.regular.red,     ctermfg = cterm.regular.red      },
  Label        = { link = "Conditional"                                     },
  Special      = { fg = c.regular.cyan,    ctermfg = cterm.regular.cyan     },
  SpecialChar  = { link = "Special"                                         },
  Function     = { fg = c.regular.blue,    ctermfg = cterm.regular.blue     },
  Operator     = { link = "Normal"                                          },
  Title        = { fg      = c.regular.cyan, bold = true,
                   ctermfg = cterm.regular.cyan },
  -- Tag          = colors.Green,
  -- Delimiter    = colors.LightGrey,
  Comment        = { fg = c.bright.grey },
  SpecialComment = { link = "Comment" },
  Todo           = {   fg = c.regular.black,          bg = c.bright.cyan,
                  ctermfg = cterm.regular.black, ctermbg = cterm.bright.cyan },

  -- LSP
  DiagnosticError = { fg = c.regular.red,     ctermfg = cterm.regular.red     },
  DiagnosticWarn  = { fg = c.regular.yellow,  ctermfg = cterm.regular.yellow  },
  DiagnosticInfo  = { fg = c.regular.blue,    ctermfg = cterm.regular.blue    },
  DiagnosticHint  = { fg = c.regular.magenta, ctermfg = cterm.regular.magenta },
  DiagnosticOk    = { fg = c.regular.green,   ctermfg = cterm.regular.green   },

  -- GitSigns
  GitSignsDelete = { fg = c.regular.red,   ctermfg = cterm.regular.red   },
  GitSignsChange = { fg = c.regular.blue,  ctermfg = cterm.regular.blue  },
  GitSignsAdd    = { fg = c.regular.green, ctermfg = cterm.regular.green },

  -- Tree
  NvimTreeOpenedFile   = { fg = c.regular.orange   },
  NvimTreeGitNew       = { fg = c.regular.blue    },
  NvimTreeGitRenamed   = { link = "NvimTreeGitNew" },
  NvimTreeWindowPicker = { fg = c.regular.white, bg = c.regular.blue },
  NvimTreeSymlink      = { fg = c.regular.yellow   },
  NvimTreeRootFolder   = { bold = true, fg = c.regular.cyan },
  NvimTreeGitDeleted   = { fg = c.regular.red },
  NvimTreeGitDirty     = { fg = c.regular.blue },
  NvimTreeSpecialFile  = { underline = true, bold = true },


}

function M.setup ()

  for group, val in pairs(hl) do
    vim.api.nvim_set_hl(0, group, val)
  end

end

return M