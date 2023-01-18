local options = {
	clipboard = "unnamedplus",
	mouse = "a",
	cursorline = true,
	number = true,
	relativenumber = true,
	scrolloff = 5,
	sidescrolloff = 5,
	wrap = false,
    splitbelow = true,
    splitright = true,
    smartcase = true,
    hlsearch = true,
    termguicolors = true,
    syntax = "on",
    signcolumn = "yes",
    completeopt = { "menuone", "noselect" },

	guicursor = "n-v-sm:hor20,i-ci-ve-c:ver25-Cursor,r-cr-o:block," ..
                "a:blinkwait100-blinkon200-blinkoff150",

	showtabline = 2,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	smartindent = true,
    autoindent = true,
    softtabstop = 4,

}

for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]
vim.cmd [[ autocmd VimEnter * setlocal formatoptions-=cro ]] -- no continuing comments

-- nerdtree
vim.g.NERDTreeShowHidden = 1  -- show hidden files by default

