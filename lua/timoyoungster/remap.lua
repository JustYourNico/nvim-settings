local nnoremap = require("timoyoungster.keymap").nnoremap
local inoremap = require("timoyoungster.keymap").inoremap

-- normal mode
nnoremap("<leader>cj", "<cmd>Ex<CR>")
nnoremap("<CR>", "o<ESC>")
nnoremap("<leader>m", ":lua require('harpoon.mark').add_file()<CR>")
nnoremap("`", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

nnoremap("<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
nnoremap("<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
nnoremap("<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
nnoremap("<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>")
nnoremap("<leader>5", ":lua require('harpoon.ui').nav_file(5)<CR>")
nnoremap("<leader>6", ":lua require('harpoon.ui').nav_file(6)<CR>")
nnoremap("<leader>7", ":lua require('harpoon.ui').nav_file(7)<CR>")
nnoremap("<leader>8", ":lua require('harpoon.ui').nav_file(8)<CR>")
nnoremap("<leader>9", ":lua require('harpoon.ui').nav_file(9)<CR>")

-- input mode
inoremap("jk", "<ESC>")

-- visual mode
