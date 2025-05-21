-- set teminal to zsh (nushell makes a mess)
vim.opt.shell = '/bin/zsh'
vim.g.terminal_emulator = 'zsh'

-- Enable clipboard sync with macOS system clipboard
vim.opt.clipboard:append 'unnamedplus'

require './custom/remap'
return {}
