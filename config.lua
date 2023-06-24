-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.leader = "\\"
lvim.keys.normal_mode["gt"] = ":tabnext<CR>"
lvim.keys.normal_mode["gT"] = ":tabprevious<CR>"
lvim.format_on_save = true
lvim.builtin.bufferline.active = false
lvim.keys.normal_mode["<space>w"] = "<C-w>"

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" }
  }
}
