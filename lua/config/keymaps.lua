-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local builtin = require("telescope.builtin")
local keymap = vim.keymap

-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Telescope keymaps
keymap.set("n", ";f", function()
  builtin.find_files({
    no_ignore = false,
    hidden = true,
  })
end)
keymap.set("n", ";r", function()
  builtin.live_grep()
end)
keymap.set("n", "\\\\", function()
  builtin.buffers()
end)
keymap.set("n", ";t", function()
  builtin.help_tags()
end)
keymap.set("n", ";;", function()
  builtin.resume()
end)
keymap.set("n", ";e", function()
  builtin.diagnostics()
end)
