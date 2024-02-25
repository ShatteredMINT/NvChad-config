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

    -- obsidian.nvim
    ["gf"] = {
      function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- Toggle check-boxes.
    ["<leader>ch"] = {
      function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
