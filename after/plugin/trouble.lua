local actions = require("telescope.actions")
local trouble = require("trouble")
local troubleTS = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = troubleTS.open_with_trouble },
      n = { ["<c-t>"] = troubleTS.open_with_trouble },
    },
  },
}

vim.keymap.set("n", "[t", function () trouble.next({ skip_groups = true, jump = true }) end)
vim.keymap.set("n", "]t", function () trouble.previous({ skip_groups = true, jump = true }) end)
