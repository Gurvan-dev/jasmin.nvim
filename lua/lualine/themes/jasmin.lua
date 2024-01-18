-- Copyright 2024 Gurvan Debaussart (https://debauss.art) ----------------------
-- Distributed under the MIT license

local c = require "jasmin.palette"

return {
  normal = {
    a = { bg = c.regular.green, fg = c.regular.black   },
    b = { bg = c.regular.black, fg = c.regular.white   },
    c = { bg = c.regular.black, fg = c.regular.white   },
  },
  insert = {
    a = { bg = c.regular.blue, fg = c.regular.black    },
  },
  visual = {
    a = { bg = c.regular.magenta, fg = c.regular.black },
  },
  replace = {
    a = { bg = c.regular.cyan, fg = c.regular.black    },
  },
  command = {
    a = { bg = c.regular.yellow, fg = c.regular.black  },
  },
  inactive = {
    a = { bg = c.regular.black, fg = c.regular.white   },
  },
}


