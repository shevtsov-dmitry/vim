-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("n", "<leader>rc", ":!gcc % && ./a.out<CR>", { desc = "[r]un [c] with GCC", noremap = true })
map("n", "<leader>rr", ":!zig run %<CR>", { desc = "[r]un [z]ig", noremap = true })

-- java
map("n", "<leader>rj", ":!java %<CR>", { desc = "[r]un [j]ava", noremap = true })
map("n", "<leader>raj", ":!java -ea %<CR>", { desc = "[r]un with [a]ssertions enabled", noremap = true })

-- maven
map("n", "<leader>mc", ":!mvn compile<CR>", { desc = "[m]vn [c]ompile", noremap = true })

-- FORMATS

-- prettier
map("n", "<leader>fm", ":!npx prettier . --write<CR>", { desc = "[f]ormat with prettier", noremap = true })
