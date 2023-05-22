require("oil").setup({
  default_file_explorer = true,
  prompt_save_on_select_new_entry = true,
  use_default_keymaps = true,
})
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
