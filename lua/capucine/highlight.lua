local c = require "capucine.palette"
local M = {}

local hl = {

  -- Basics
  Normal      = { fg = c.regular.white, bg = c.regular.black },
  SignColumn  = { link = "Normal" },
  FoldColumn  = { link = "Normal" },
  EndOfBuffer = { fg = c.regular.black, bg = c.regular.black },
  Cursor      = { reverse = true },
  -- WarningMsg
  TabLine      = { link = "Normal" },
  LineNr       = { fg = c.regular.white, bg = c.regular.black },
  LineNrAbove  = { link = "LineNr"     },
  LineNrBelow  = { link = "LineNr"     },
  CursorLineNr = { fg = c.bright.magenta, bg = c.regular.black, bold = true },
  CursorLine   = { bg = c.bright.black },
  CursorColumn = { link = "CursorLine" },
  ColorColumn  = { link = "CursorLine" },
  Visual       = { link = "CursorLine" },
  Whitespace   = { fg = c.bright.red,     bg = c.bright.red },
  Search       = { fg = c.regular.white,  bg = c.bright.black },
  CurSearch    = { bg = c.bright.black },

  StatusLine   = { link = "Normal" },
  StatusLineNC = { link = "Normal" },
  WinSeparator = { fg = c.bright.black, bg = c.regular.black },

  TabLineFill = { link = "Normal" },
  Directory   = { fg = c.regular.blue, bold= true },

  -- IncSearch
  Pmenu        = { link = "Search"    },
  PmenuSel     = { link = "CurSearch" },
  Substitute   = { bg = c.regular.pink },

  -- Syntax
  String       = { fg = c.bright.green },
  Character    = { link = "String"        },
  Constant     = { fg = c.bright.yellow    },
  Number       = { link = "Constant"      },
  Float        = { link = "Constant"      },
  Boolean      = { link = "Constant"      },
  Type         = { fg = c.bright.green    },
  Structure    = { fg = c.regular.blue    },
  StorageClass = { link = "Type" },
  Identifier   = { fg = c.regular.white },
  PreProc      = { fg = c.regular.pink    },
  PreCondit    = { fg = c.regular.pink    },
  Include      = { fg = c.regular.pink    },
  Keyword      = { fg = c.regular.magenta },
  Define       = { fg = c.regular.pink    },
  Typedef      = { link = "Type" },
  Exception    = { fg = c.regular.red     },
  Conditional  = { link = "Keyword" },
  Repeat       = { link = "Keyword" },
  Statement    = { fg = c.regular.magenta },
  Macro        = { link = "PreProc" },
  Error        = { fg = c.regular.red },
  Label        = { link = "Conditional" },
  Special      = { fg = c.regular.cyan },
  SpecialChar  = { link = "Special" },
  Function     = { fg = c.regular.blue },
  Operator     = { link = "Normal" },
  Title         = { fg = c.regular.magenta, bold = true },
  -- Tag          = colors.Green,
  -- Delimiter    = colors.LightGrey,
  Comment        = { fg = c.bright.grey },
  SpecialComment = { link="Comment" },
  Todo           = { fg = c.regular.black, bg = c.bright.cyan },

  -- LSP
  DiagnosticError = { fg = c.regular.red     },
  DiagnosticWarn  = { fg = c.regular.yellow  },
  DiagnosticInfo  = { fg = c.regular.blue    },
  DiagnosticHint  = { fg = c.regular.magenta },
  DiagnosticOk    = { fg = c.regular.green   },
  -- TODO

  -- GitSigns
  GitSignsDelete = { fg = c.regular.red  },
  GitSignsChange = { fg = c.regular.blue },
  GitSignsAdd    = { fg = c.regular.green },

  -- Nvimtree

  -- Hardline
  Hardline_bufferline_background = { fg = c.regular.black, bg = c.regular.black },
  -- Hardline_bufferline_separator
  -- Hardline_background_modified
  Hardline_bufferline_current_modified = { fg = c.regular.black, bg = c.regular.blue },
  Hardline_bufferline_current = { fg = c.regular.green, bg = c.regular.black },
  Hardline_error_active   = { fg = c.regular.black, bg = c.regular.red    },
  Hardline_error_inactive = { fg = c.regular.red,   bg = c.regular.black  },
  Hardline_warning_active = { fg = c.regular.black, bg = c.regular.yellow },
  -- Hardline_mode_replace =
  Hardline_mode_visual   = { fg = c.regular.black, bg = c.regular.magenta },
  -- Hardline_mode_inactive =
  Hardline_mode_normal   = { fg = c.regular.black, bg = c.regular.green   },
  Hardline_mode_insert   = { fg = c.regular.black, bg = c.regular.blue    },
  Hardlinde_mode_command = { fg = c.regular.black, bg = c.regular.orange  },
  Hardline_med_active    = { fg = c.bright.orange, bg = c.regular.black },
  Hardline_med_inactive  = { link = "Normal" },
  Hardline_high_active   = { link = "Normal" },
  Hardline_high_inactive = { link = "Normal" },
  Hardline_low_active    = { link = "Normal" },
  Hardline_low_inactive  = { link = "Normal" },

  -- Notes:
  -- OCamlConstructor -> Constant
  -- OCamlModPath -> Include
}

function M.setup ()

  for group, val in pairs(hl) do
    vim.api.nvim_set_hl(0, group, val)
  end
end

return M
