-- Custom Key Bindings 
local options = { noremap = true, silent = true }
local map_key = vim.api.nvim_set_keymap


-- Paremeters: Target Mode, Key Binding, Result
map_key("i", "jk", "<Esc>", options)
map_key("n", "<C-l>", ":NERDTreeToggle<Cr>", options)


function open_terminal()
    vim.cmd([[
        :tab new
        :ter

        :set norelativenumber
        :call feedkeys('i')
    ]])
end

-- Terminal-specific key bindings
vim.keymap.set("n", "<C-t>", open_terminal, options)

map_key("t", "<Esc>", "<C-\\><C-n>", options)
