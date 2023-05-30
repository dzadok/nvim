require("oil").setup({
  default_file_explorer = true,
  prompt_save_on_select_new_entry = true,
  use_default_keymaps = true,
  buf_options = {
    buflisted = false,
  },
  view_options = {
    show_hidden = true,
  }
})
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
