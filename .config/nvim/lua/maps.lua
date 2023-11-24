local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Define a function to append " # type: ignore" to the current line
function AppendTypeIgnore()

 -- Get the current line number
  local line_number = vim.fn.line(".")

  -- Get the current line content
  local line_content = vim.fn.getline(line_number)

  -- Append the text to the current line without a line break
  vim.fn.setline(line_number, line_content .. "  # type: ignore")
end


-- Normal mode mappings
map('n', '<leader>z', ':vnew<CR>e .<CR>', opts)
map('n', '<leader><BACKSPACE>', ':bd<CR>', opts)

map('n', '<silent><leader>1', ':bdelete 1<CR>', opts)
map('n', '<silent><leader>2', ':bdelete 2<CR>', opts)
map('n', '<silent><leader>3', ':bdelete 3<CR>', opts)
map('n', '<silent><leader>4', ':bdelete 4<CR>', opts)
map('n', '<silent><leader>5', ':bdelete 5<CR>', opts)
map('n', '<silent><leader>6', ':bdelete 6<CR>', opts)
map('n', '<silent><leader>7', ':bdelete 7<CR>', opts)
map('n', '<silent><leader>8', ':bdelete 8<CR>', opts)
map('n', '<silent><leader>9', ':bdelete 9<CR>', opts)
map('n', '<silent><leader>0', ':bdelete 0<CR>', opts)

map('n', '<silent><leader>s', ':bnext<CR>', opts)
map('n', '<silent><leader>a', ':bprevious<CR>', opts)

map('n', '<leader>x', ':tabnew .<CR>e .<CR>', opts)
map('n', '<leader>v', ':tabn<CR>', opts)
map('n', '<leader>c', ':tabp<CR>', opts)
map('n', '<leader>h', ':wincmd h<CR>', opts)
map('n', '<leader>j', ':wincmd j<CR>', opts)
map('n', '<leader>k', ':wincmd k<CR>', opts)
map('n', '<leader>l', ':wincmd l<CR>', opts)
map('n', '<leader>pv', ':wincmd v<bar> :Ex <CR>', opts)

map('n', '<silent> <Leader>=', ':vertical resize +5<CR>', opts)
map('n', '<silent> <Leader>-', ':vertical resize -5<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>nn', [[:lua AppendTypeIgnore()<CR>]], { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>e', builtin.current_buffer_fuzzy_find, {})

-- Insert mode mappings
map('i', '{', '{}<Esc>ha', opts)
map('i', '(', '()<Esc>ha', opts)
map('i', '[', '[]<Esc>ha', opts)
map('i', '"', '""<Esc>ha', opts)
map('i', "'", "''<Esc>ha", opts)
map('i', '`', '``<Esc>ha', opts)

