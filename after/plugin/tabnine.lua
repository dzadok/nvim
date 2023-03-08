local setup, tabnine = pcall(require, "tabnine")

if not setup then
  return
end

tabnine.setup({
  disable_auto_comment = true,
  accept_keymap = "<S-Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" }
})

