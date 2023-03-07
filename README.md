<div align="center">
    <h1>🦉 night-owl.nvim ✨</h1>
</div>

<div align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/oxfist/night-owl.nvim/main/img/light_logo.png">
        <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/oxfist/night-owl.nvim/main/img/dark_logo.png">
        <img src="img/logo.png" height="300" alt="Logo" />
    </picture>
</div>

The _best_ implementation of
[Sarah Drasner's Night Owl VSCode theme](https://github.com/sdras/night-owl-vscode-theme)
for Neovim with Treesitter support.

## 💾 How to install

### Packer

```lua
use("oxfist/night-owl.nvim")
```

### vim-plug

```vim
Plug 'oxfist/night-owl.nvim'
```

## 🎨 Usage

Add the **following** line to your Lua configuration files:

```lua
vim.cmd("colorscheme night-owl")
```

## 🔎 Comparison

How does this port compare to the original VSCode theme? Check it out!

| Original VSCode Theme                                                        | This Theme 🤩                                                              |
| ---------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| <img src="./img/vscode.png" alt="Screenshot of VSCode theme" width="1062" /> | <img src="./img/neovim.png" alt="Screenshot of this theme" width="1078" /> |

## ✨ Features

This implementation of Night Owl solves several syntax highlight discrepancies
that other ports have with the original VSCode theme.

The following features allow making the programming experience as close to the
original VSCode theme as possible:

1. Additional Treesitter queries to extend the default highlight groups
2. Autocommands to enable changing background colors when Neovim is inactive

<details>
    <summary>👇 Click to see comparison with <code>haishanh/night-owl.vim</code></summary>

| [haishanh/night-owl.vim](https://github.com/haishanh/night-owl.vim)             | This Theme                                                                 |
| ------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| <img src="./img/haishanh.png" alt="Screenshot of haishanh theme" width="900" /> | <img src="./img/neovim.png" alt="Screenshot of this theme" width="1014" /> |

With Treesitter installed you can see the overall look and feel is significantly
different:

- Different colors for several keywords like `let`, `const`, `async`,
  `function`, etc. Same happens for class names `EditFishForm` and `Sale`.
- Italics _not_ applied anywhere except for comments.
- Italics _incorrectly_ applied to JSDoc keywords `@param` and `@returns`.
  <br />

</details>

### Language Support

<div align="center">

| Languages      | Status |
| :------------- | :----: |
| JavaScript/JSX |   ✅   |
| JSON           |   ✅   |
| TypeScript/TSX |   ✅   |
| Markdown       |   ✅   |

</div>

## 🧩 Plugins Supported

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)

## 📝 TODO

- [x] Fix `.?` operator not being highlighted separately
- [x] Fix `@constant` color highlighting when accessing value
- [x] Fix JSDoc parameter identifiers not being highlighted properly
- [ ] Fix LSP rename dialog colors not visible enough
