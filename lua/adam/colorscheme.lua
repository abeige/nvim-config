local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- note: Once the cursor was disappearing when I opened a python file.
--       I don't know what fixed it but try commenting out the below section
--       and then adding pieces back in half at a time.
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")

-- for highlight groups look in
-- ~/.local/share/nvim/site/pack/packer/start/gruvbox.nvim/lua/gruvbox

-- illuminate
-- vim.cmd [[ hi link LspReferenceRead CursorLine ]]
-- vim.cmd [[ hi link LspReferenceText MatchParen ]]
-- vim.cmd [[ hi link LspReferenceWrite CursorLine ]]
