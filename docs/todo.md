- changes to the auto-completion symbols have been some how introduced by commit from 2022-09-14

- [x] user/settings.lua
- [x] user/autocmds.lua
- [x] autoload/\* -> markdown folding
- [x] after/ftplugin
- [x] user/utils.lua
- [x] user/which-key/register_n_leader.lua ??
- [x] which-key
- [x] plugins
- [x] [x] user.plugins.telescope".pickers
- [x] local
- [ ] update to micah, astronvim and to 0.8
- [ ] rafi's missing pickers: /home/dave/Dropbox/LinuxInstall/astronvim.bak2mv/lua/user/plugins/telescope.lua
- [ ] imap: ctrl-s
- [ ] Customize cmp Completion??
- [ ] lazygit: don't show start up window, (go back)
- [o] better / consistent quitting (closing) of buffers, expecially floating windows/buffers
- [ ] new mappings for Calendar-vim plugin (switched off defaults because of conflicts)
- [ ] run code in interactive shell, send code, ...
- [ ] how to debug
- [ ] autocommnds: rewrite vim stuff to LUA
- [ ] alpha: line at left hand side
- [ ] alpha dot-file: https://github.com/alpha2phi/dotfiles
- [-] https://alpha2phi.medium.com/neovim-tips-for-a-better-coding-experience-3d0f782f034e
  - [x] 1
  - [ ] 2: "mfussenegger/nvim-treehopper", 'ruifm/gitlinker.nvim','jbyuki/instant.nvim'
  - [ ] 3: "vuki656/package-info.nvim", crates.nvim, "haringsrob/nvim_context_vt", "rhysd/git-messenger.vim", "nacro90/numb.nvim",
  - [ ] 4: "j-hui/fidget.nvim", "hoschi/yode-nvim", "AckslD/nvim-neoclip.lua",
  - [ ] 5: https://alpha2phi.medium.com/neovim-plugins-for-a-better-coding-experience-part-5-7ac5aff6867
- [ ] https://alpha2phi.medium.com/jupyter-notebook-vim-neovim-c2d67d56d563
- [ ] https://alpha2phi.medium.com/vim-neovim-plugins-for-a-better-integrated-experience-6accd4c2a52c
- [ ] https://alpha2phi.medium.com/vim-neovim-managing-notes-and-todo-list-8ae8e3db6464
- [ ] https://alpha2phi.medium.com/new-neovim-plugins-to-improve-development-workflow-33419d74e9ac

https://alpha2phi.medium.com/neovim-tips-for-a-better-coding-experience-3d0f782f034e

- [x] use {'nvim-treesitter/nvim-treesitter-refactor'}
- [x] https://github.com/romgrk/nvim-treesitter-context

## Plugins

- https://github.com/LinArcX/telescope-command-palette.nvim or "mrjones2014/legendary.nvim",

```lua
use {'RRethy/nvim-treesitter-textsubjects'}
```

In your treesitter configuration,

```lua
require'nvim-treesitter.configs'.setup {
    textsubjects = {
        enable = true,
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
        }
    },
}
```

```lua
use {
  "AckslD/nvim-neoclip.lua",
  requires = {
    {'kkharji/sqlite.lua', module = 'sqlite'},
    -- you'll need at least one of these
    -- {'nvim-telescope/telescope.nvim'},
    -- {'ibhagwan/fzf-lua'},
  },
  config = function()
    require('neoclip').setup()
  end,
}

```
