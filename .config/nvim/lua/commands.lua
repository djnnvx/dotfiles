-- define commands

vim.cmd [[command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)]]
vim.cmd [[command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case ' .. shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)]]
vim.cmd [[command! -bang -nargs=* GGrep call fzf#vim#grep('git grep --line-number ' .. shellescape(<q-args>), 0, fzf#vim#with_preview({'dir': vim.fn.systemlist('git rev-parse --show-toplevel')[1]}), <bang>0)]]

