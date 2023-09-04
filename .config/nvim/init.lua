
-- [[
--
--  djnn's nvim config
--
--  https://djnn.sh
--
-- ]]


-- SET ASDF PROVIDERS FIRST
vim.g['python3_host_prog'] = '~/.asdf/shims/python3'
vim.g['node_host_prog'] = '~/.asdf/shims/node'

require('plugins')
require('opts')
require('maps')
require('commands')
require('lsp')
require('themes')


-- [[
--
-- PLUGIN CONFIGS
--
-- ]]

require'nvim-treesitter.configs'.setup {
    ensure_installed = 'all',                             -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false,                                 -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { },                                 -- List of parsers to ignore installing
  highlight = {
    enable = true,                                      -- false will disable the whole extension
    disable = { "glsl" },                               -- list of language that will be disabled

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}


-- [[
--
-- AUTORUNS
--
-- ]]

-- Fix out-of-sync Syntax Highlight (at a performance cost)
vim.cmd [[autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart]]
vim.cmd [[autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear]]


-- Highlights comment in json files
vim.cmd [[autocmd FileType json syntax match Comment +\/\/.\+$+]]

-- Disables automatic commenting on newline
vim.cmd [[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]

-- Automatically deletes all trailing whitespace on save
vim.cmd [[autocmd BufWritePre * %s/\s\+$//e]]

-- Sets airline theme
vim.cmd [[autocmd FileType * :AirlineTheme base16_gruvbox_dark_soft ]]

-- Sets visual mode display color
vim.cmd [[autocmd FileType * :hi Visual ctermbg=DarkGrey ctermfg=LightGrey]]

