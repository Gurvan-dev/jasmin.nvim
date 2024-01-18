-- Copyright 2024 Gurvan Debaussart (https://debauss.art) ----------------------
-- Distributed under the MIT license

local M = {}

-- Apply the colorscheme
function M.load()
  require "jasmin.highlight".setup()
  require "jasmin.terminal".setup()
end

return M
