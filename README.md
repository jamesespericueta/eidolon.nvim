# Eidolon.nvim colorscheme

<p align="center">
  <a
    href="https://github.com/Vallen217/dotfiles/stargazers">
    <img src="https://img.shields.io/github/stars/Vallen217/dotfiles?color=87bff7&style=for-the-badge&logo=starship&labelColor=12121f", alt="stars">
  </a>
  <a
    href="https://github.com/Vallen217/dotfiles/issues">
    <img src="https://img.shields.io/github/issues/Vallen217/eidolon.nvim?color=bd4277&style=for-the-badge&logo=codecov&labelColor=12121f", alt="issues">
  </a>
  <a
    href="https://github.com/Vallen217/dotfiles/network/members">
    <img src="https://img.shields.io/github/forks/Vallen217/dotfiles?color=74d2b7&style=for-the-badge&logo=jfrog-bintray&labelColor=12121f", alt="forks">
  </a>
  <a
    href="https://github.com/Vallen217/dotfiles/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/Vallen217/dotfiles?color=aaecf8&style=for-the-badge&logo=jfrog-bintray&labelColor=12121f", alt="license"></a>
  </a>
</p>

![Alt test](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/1.png?raw=true)

![Alt test](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/2.png?raw=true)

![Alt test](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/3.png?raw=true)

![Alt test](https://github.com/Vallen217/eidolon.nvim/blob/main/screenshots/4.png?raw=true)

## Supported plugins

- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP](https://github.com/neovim/nvim-lspconfig)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Installation

Install the theme via your prefered package manager

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use("Vallen217/eidolon.nvim")
```

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "Vallen217/eidolon.nvim", lazy = false, priority = 1000 },
```

## Usage

```lua
vim.cmd[[colorscheme eidolon]]
```

### TODO:

- Integrate support:
  - [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
  - [mini-icons](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-icons.md)
  - [neogit](https://github.com/NeogitOrg/neogit)
