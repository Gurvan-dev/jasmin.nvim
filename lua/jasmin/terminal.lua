local c = require "jasmin.palette"
local M = {}

function M.setup()
  vim.g.terminal_color_0  = c.regular.black
  vim.g.terminal_color_1  = c.regular.red
  vim.g.terminal_color_2  = c.regular.green
  vim.g.terminal_color_3  = c.regular.yellow
  vim.g.terminal_color_4  = c.regular.blue
  vim.g.terminal_color_5  = c.regular.magenta
  vim.g.terminal_color_6  = c.regular.cyan
  vim.g.terminal_color_7  = c.regular.white

  vim.g.terminal_color_8  = c.bright.black
  vim.g.terminal_color_9  = c.bright.red
  vim.g.terminal_color_10 = c.bright.green
  vim.g.terminal_color_11 = c.bright.yellow
  vim.g.terminal_color_12 = c.bright.blue
  vim.g.terminal_color_13 = c.bright.magenta
  vim.g.terminal_color_14 = c.bright.cyan
  vim.g.terminal_color_15 = c.bright.white
end

return M
