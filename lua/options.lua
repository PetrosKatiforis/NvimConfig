-- Enabling color scheme
vim.cmd[[ colorscheme hacker ]]


local configuration = {
    -- Colorscheme specific
    background = "dark",
    termguicolors = true,

    -- General terminal settings
    shiftwidth = 4,
    tabstop = 4,
    expandtab = true,
    relativenumber = true,

    -- Nvim settings
    swapfile = false
}

-- Looping through each configuration setting and applying it
for setting, value in pairs(configuration) do
    vim.o[setting] = value
end


-- Making tabs work like 2 spaces for specific files only
-- These tend to include more nested code than usual, like html or svelte files
vim.api.nvim_create_autocmd(
    { "BufEnter" }, 
    
    { 
        pattern = { "*.scss" , "*.html" , "*.svelte", "*.css", "*.js", "*.ts" },
        command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2"
    }
)
