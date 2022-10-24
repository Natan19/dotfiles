-- in after/ftplugin/json.lua
local jsonpath = require('jsonpath')
-- show json path in the winbar
if vim.fn.exists("+winbar") == 1 then
  vim.opt_local.winbar = "%{%v:lua.require'jsonpath'.get()%}"
end

-- function display_json_path()

-- end


-- send json path to clipboard
vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", jsonpath.get())
end, { desc = "copy json path", buffer = true })
