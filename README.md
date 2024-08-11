# Monoquoi

A monochromatic Neovim colorscheme with a splash of color.

# Installation

For [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'mcombeau/monoquoi.nvim'
```

For [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    'mcombeau/monoquoi.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'monoquoi' .load()
    end
}
```

For [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'monoquoi/monoquoi.nvim', { 'branch': 'main' }
```

# Acknowledgements

- This theme is based on [AlexvZyl/nordic.nvim](https://github.com/AlexvZyl/nordic.nvim).
