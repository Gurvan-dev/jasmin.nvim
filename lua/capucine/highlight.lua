local c = require "capucine.palette"
local M  = {}

local hl = {

  -- Basics
  Normal      = { fg = c.normal.white, bg = c.normal.black },
  EndOfBuffer = { fg = c.normal.black, bg = c.normal.black },
  Cursor      = { reverse = true },

  -- Syntax
  String       = { fg = c.normal.orange  },
  Character    = { link = "String"       },
  Number       = { fg = c.normal.blue    },
  Float        = { link = "Number"       },
  Boolean      = { fg = c.normal.blue    },
  Type         = { fg = c.bright.green   },
  Structure    = { fg = c.normal.blue    },
  -- StorageClass = colors.Yellow,
  Identifier   = { fg = c.normal.blue    },
  Constant     = { fg = c.normal.blue    },
  PreProc      = { fg = c.normal.pink    },
  PreCondit    = { fg = c.normal.pink    },
  Include      = { fg = c.normal.pink    },
  Keyword      = { fg = c.normal.magenta },
  Define       = { fg = c.normal.pink    },
  Typedef      = { fg = c.normal.green   },
  Exception    = { fg = c.normal.red     },
  Conditional  = { link = "Keyword" },
  Repeat       = { link = "Keyword" },
  -- Statement    = colors.Purple,
  -- Macro        = colors.Red,
  Error        = { c.normal.red },
  -- Label        = colors.Purple,
  -- Special      = colors.Red,
  -- SpecialChar  = colors.Red,
  -- Function     = {fg = c.blue, fmt = cfg.code_style.functions},
  -- Operator     = colors.Purple,
  -- Title        = colors.Cyan,
  -- Tag          = colors.Green,
  -- Delimiter    = colors.LightGrey,
  -- Comment      = {fg = c.grey, fmt = cfg.code_style.comments},
  -- SpecialComment = {fg = c.grey, fmt = cfg.code_style.comments},
  -- Todo         = {fg = c.red, fmt = cfg.code_style.comments}
}

function M.setup ()
  for group, val in pairs(hl) do
    vim.api.nvim_set_hl(0, group, val)
  end
end

return M
