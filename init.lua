vim.g.netrw_liststyle = 3     -- tree view
vim.g.netrw_banner = 0        -- hide the help banner
vim.g.netrw_winsize = 25      -- sidebar width (%)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Lex<CR>", { silent = true })
vim.keymap.set("n", "<leader>qq", ":qa!<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")

-- Theme
vim.pack.add({ "https://github.com/loctvl842/monokai-pro.nvim" })
require("monokai-pro").setup({ filter = "octagon" })
vim.cmd.colorscheme("monokai-pro")
