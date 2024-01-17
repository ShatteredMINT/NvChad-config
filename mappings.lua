---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = {"<cmd> LazyGit <CR>", "Open Git GUI"},

    -- hover
    ["<leader>h"] = {
      function()
        require("hover").hover()
      end,
      "Hover info"},
    ["<leader>hs"] = {
      function()
        require("hover").hover_select()
      end,
      "Hover info (selected)"},
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
