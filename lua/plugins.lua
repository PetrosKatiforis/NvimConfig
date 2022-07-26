-- Plugin Configuration & Global Variables

vim.g.airline_theme = "base16_black_metal"
vim.g.closetag_filenames = "*.svelte, *.html, *.jsx, *.tsx"


return require("packer").startup(function()
    -- Setting up plugins with packer
    
    use "victorze/foo"
    use "elzr/vim-json"
    
    use "vim-airline/vim-airline"
    use "vim-airline/vim-airline-themes"

    use "preservim/nerdtree"
    
    use "alvan/vim-closetag"
    use { "evanleck/vim-svelte", branch = "main" }
 
end)


