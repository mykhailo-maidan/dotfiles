if vim.g.vscode then
  -- VSCode Neovim
  vim.opt.runtimepath:append('~/.config/nvim-vs-code')
  require('modules.vscode_keymaps')
else
  -- Ordinary Neovim
end
