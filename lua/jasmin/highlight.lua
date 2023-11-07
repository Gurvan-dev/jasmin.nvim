local c     = require "jasmin.palette"
local cterm = require "jasmin.termcolor"

local M = {}

local hl = {

  -- Basics
  Normal      = { fg = c.regular.white,          bg = c.regular.black,
             ctermfg = cterm.regular.white, ctermbg = cterm.regular.black     },
  SignColumn  = { link = "Normal"                                             },
  FoldColumn  = { link = "Normal"                                             },
  EndOfBuffer = { fg = c.regular.black,          bg = c.regular.black,
             ctermfg = cterm.regular.black, ctermbg = cterm.regular.black     },
  Cursor      = { reverse = true                                              },
  -- WarningMsg
  TabLine      = { link = "Normal"                                            },
  TabLineSel   = { bg = c.regular.green,          fg = c.regular.black,
              ctermbg = cterm.regular.green, ctermfg = cterm.regular.black    },
  LineNr       = { fg = c.bright.grey,            bg = c.regular.black,
              ctermfg = cterm.regular.white, ctermbg = cterm.regular.black    },
  LineNrAbove  = { link = "LineNr"                                            },
  LineNrBelow  = { link = "LineNr"                                            },
  CursorLineNr = { bold = true,
                   fg = c.bright.magenta, ctermfg = cterm.bright.magenta      },
  CursorLine   = { bg = c.bright.black,   ctermbg = cterm.bright.black        },
  CursorColumn = { link = "CursorLine"                                        },
  ColorColumn  = { link = "CursorLine"                                        },
  Visual       = { link = "CursorLine"                                        },
  Whitespace   = { fg = c.bright.yellow, ctermfg = cterm.bright.yellow        },
  Search       = { fg = c.regular.black,  ctermfg = cterm.regular.black,
                   bg = c.bright.yellow,  ctermbg = cterm.bright.yellow        },
  CurSearch    = { bold = true,
                   fg = c.regular.black,      ctermfg = cterm.bright.black,
                   bg = c.regular.orange,     ctermbg = cterm.bright.red      },
  StatusLine   = { link = "Normal"                                            },
  StatusLineNC = { fg = c.regular.black,          bg = c.regular.black,
              ctermfg = cterm.regular.black, ctermbg = cterm.regular.black    },

  WinSeparator = { fg = c.bright.black,          bg = c.regular.black,
              ctermfg = cterm.bright.black, ctermbg = cterm.regular.black     },

  TabLineFill = { link = "Normal"                                             },
  Directory   = { fg = c.regular.blue, bold= true,
             ctermfg = cterm.regular.blue                                     },
  ErrorMsg    = { bg = c.regular.red, fg = c.regular.black,
              ctermbg = cterm.regular.red, ctermfg = cterm.regular.black      },
  NonText     = { fg = c.bright.grey, ctermfg = cterm.bright.grey             },
  SpecialKey  = { link = "NonText"                                            },
  MatchParen  = { bold = true, bg = c.regular.grey,
                          ctermbg = cterm.bright.white                        },
  Pmenu        = { link = "Search"                                            },
  PmenuSel     = { link = "CurSearch"                                         },
  Substitute   = { fg = c.regular.black, ctermfg = cterm.regular.black,
                  bg = c.regular.pink,    ctermbg = cterm.regular.pink        },
  Conceal      = { fg = c.regular.grey,           bg = c.regular.black,
              ctermfg = cterm.regular.white, ctermbg = cterm.regular.black    },
  VertSplit    = { fg = c.bright.black,          bg = c.regular.black,
              ctermfg = cterm.bright.black, ctermbg = cterm.regular.black     },

  DiffAdd     = { fg = c.bright.white, bg = c.bright.green                    },
  DiffChange  = { fg = c.bright.white, bg = c.bright.cyan                     },
  DiffDelete  = { fg = c.bright.white, bg = c.bright.red                      },
  DiffText    = { fg = c.bright.white, bg = c.bright.cyan                     },

  -- Syntax
  String       = { link = "Constant"                                          },
  Character    = { link = "Constant"                                          },
  Constant     = { fg = c.bright.yellow,   ctermfg = cterm.bright.yellow      },
  Number       = { link = "Constant"                                          },
  Float        = { link = "Constant"                                          },
  Boolean      = { link = "Constant"                                          },
  Type         = { fg = c.bright.green,    ctermfg = cterm.bright.green       },
  Structure    = { fg = c.regular.blue,    ctermfg = cterm.regular.blue       },
  StorageClass = { link = "Type"                                              },
  Identifier   = { fg = c.regular.white                                       },
  PreProc      = { fg = c.regular.pink,   ctermfg = cterm.bright.magenta      },
  PreCondit    = { link = "PreProc"                                           },
  Include      = { link = "PreProc"                                           },
  Keyword      = { fg = c.bright.magenta, ctermfg = cterm.bright.magenta      },
  Define       = { fg = c.regular.pink,    ctermfg = cterm.bright.magenta     },
  Typedef      = { link = "Type"                                              },
  Exception    = { fg = c.regular.red,     ctermfg = cterm.regular.red        },
  Conditional  = { link = "Keyword"                                           },
  Repeat       = { link = "Keyword"                                           },
  Statement    = { link = "Keyword"                                           },
  Macro        = { link = "PreProc"                                           },
  Error        = { fg = c.bright.red,     ctermfg = cterm.bright.red          },
  Label        = { link = "Conditional"                                       },
  Special      = { fg = c.bright.cyan,    ctermfg = cterm.bright.cyan         },
  SpecialChar  = { link = "Special"                                           },
  Function     = { fg = c.regular.blue,    ctermfg = cterm.regular.blue       },
  Operator     = { fg = c.regular.white                                       },
  Title        = {     fg  = c.bright.cyan, bold = true,
                   ctermfg = cterm.bright.cyan },
  -- Tag          = colors.Green,
  Delimiter      = { link = "Special"                                         },
  Comment        = { fg = c.bright.grey                                       },
  SpecialComment = { link = "Comment"                                         },
  Todo           = {   fg = c.regular.black,          bg = c.bright.cyan,
                  ctermfg = cterm.regular.black, ctermbg = cterm.bright.cyan  },

  -- LSP
  DiagnosticError = { fg = c.regular.red,     ctermfg = cterm.regular.red     },
  DiagnosticWarn  = { fg = c.regular.yellow,  ctermfg = cterm.regular.yellow  },
  DiagnosticInfo  = { fg = c.regular.blue,    ctermfg = cterm.regular.blue    },
  DiagnosticHint  = { fg = c.regular.magenta, ctermfg = cterm.regular.magenta },
  DiagnosticOk    = { fg = c.regular.green,   ctermfg = cterm.regular.green   },

  -- GitSigns
  GitSignsDelete = { fg = c.regular.red,   ctermfg = cterm.regular.red        },
  GitSignsChange = { fg = c.regular.blue,  ctermfg = cterm.regular.blue       },
  GitSignsAdd    = { fg = c.regular.green, ctermfg = cterm.regular.green      },

  -- Tree
  NvimTreeOpenedFile   = { fg = c.regular.orange, ctermfg = cterm.regular.red },
  NvimTreeGitNew       = { fg = c.regular.blue, ctermfg = cterm.regular.blue  },
  NvimTreeGitRenamed   = { link = "NvimTreeGitNew"                            },
  NvimTreeWindowPicker = { fg = c.regular.black,      bg = c.bright.blue,
                  ctermfg = cterm.regular.black, ctermbg = cterm.bright.blue  },
  NvimTreeSymlink      = { fg = c.regular.yellow,
                      ctermfg = cterm.regular.yellow                          },
  NvimTreeRootFolder   = { bold = true, fg = c.regular.cyan,
                                   ctermfg = cterm.regular.cyan               },
  NvimTreeGitDeleted   = { fg = c.regular.red,  ctermfg = cterm.regular.red   },
  NvimTreeGitDirty     = { fg = c.regular.blue, ctermfg = cterm.regular.blue  },
  NvimTreeSpecialFile  = { underline = true, bold = true                      },

}

function M.setup ()

  for group, val in pairs(hl) do
    vim.api.nvim_set_hl(0, group, val)
  end

end

return M
