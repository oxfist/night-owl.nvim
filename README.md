<div align="center">
    <h3>🦉 night-owl.nvim 🌌</h3>
    <a href="#-contributors">
        <img src="https://img.shields.io/github/all-contributors/oxfist/night-owl.nvim?color=ee8449&style=flat-square" alt="All Contributors"></img>
    </a>
</div>

<div align="center">
    <img src="img/dark_logo.png" height="300" alt="Logo" />
</div>

The _best_ implementation of
[Sarah Drasner's Night Owl VSCode theme](https://github.com/sdras/night-owl-vscode-theme)
for Neovim with Treesitter support.

![Syntax highlight demo image](./img/calculator.png)

## 📦 Install In Zero Time

### Packer

```lua
use("oxfist/night-owl.nvim")
```

### vim-plug

```vim
Plug 'oxfist/night-owl.nvim'
```

## 🚀 Start Using With A Single Line

Add the following line to your Lua configuration files, e.g.
`~/.config/nvim/init.lua` (your actual path might be different):

```lua
vim.cmd.colorscheme("night-owl")
```

To enable `night-owl` for Lualine, simply set the theme like this in your
settings 👇:

```lua
-- This Lualine config should be somewhere in your config files
require('lualine').setup {
  options = {
    -- ... other configs
    theme = 'night-owl'
    -- ... other configs
  }
}
```

## 🖥️ Requirements

TODO

## 🔎 Comparison

How does this port compare to the original VSCode theme? Check it out!

| Original Night Owl for VSCode                                                | This Theme 🤩                                                              |
| ---------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| <img src="./img/vscode.png" alt="Screenshot of VSCode theme" width="1062" /> | <img src="./img/neovim.png" alt="Screenshot of this theme" width="1078" /> |

## ✨ Why Should You Pick _This_ Version of Night Owl?

This implementation of Night Owl solves several syntax highlight issues and
discrepancies similar ports have when comparing to the original VSCode theme.

The following features allow making the programming experience as close to the
original VSCode theme as possible:

1. **Extended default highlight group**: through additional Treesitter queries.
   See [`after/queries`](./after/queries) for details.
2. **Different background color when Neovim is inactive**: through autocommands.
   See [`after/plugin/autocmds.lua`](./after/plugin/autocmds.lua) for details.

<details>
<summary>👇 Click to see comparison with <code>haishanh/night-owl.vim</code></summary>

With Treesitter installed you can see the overall look and feel is significantly
different:

- Different colors for several keywords like `let`, `const`, `async`,
  `function`, etc. Same happens for class names `EditFishForm` and `Sale`.
- Italics _not_ applied anywhere except for comments.
- Italics _incorrectly_ applied to JSDoc keywords `@param` and `@returns`.
  <br />

| [haishanh/night-owl.vim](https://github.com/haishanh/night-owl.vim)             | This Theme                                                                 |
| ------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| <img src="./img/haishanh.png" alt="Screenshot of haishanh theme" width="900" /> | <img src="./img/neovim.png" alt="Screenshot of this theme" width="1014" /> |

</details>

### Language Support 🌐

<table>
  <tr>
    <td><img src="https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png" title="JavaScript" alt="JavaScript" width="50" /></td>
    <td><img src="https://upload.wikimedia.org/wikipedia/commons/4/4c/Typescript_logo_2020.svg" title="TypeScript" alt="Typescript" width="50" /></td>
    <td><img src="https://upload.wikimedia.org/wikipedia/commons/c/c9/JSON_vector_logo.svg" title="JSON" alt="JSON" width="50" /></td>
    <td><img src="https://upload.wikimedia.org/wikipedia/commons/4/48/Markdown-mark.svg" title="Markdown" alt="Markdown" width="50" /></td>
    <td><img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Lua-Logo.svg" title="Lua" alt="Lua" width="50" /></td>
  </tr>
  <!-- <tr> -->
  <!--   <td><img src="https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg" alt="Vimscript" width="50" style="filter: grayscale(100%) blur(2px)"/></td> -->
  <!--   <td><img src="https://upload.wikimedia.org/wikipedia/commons/d/d5/Rust_programming_language_black_logo.svg" alt="Rust" width="50" style="filter: grayscale(100%) blur(2px)"/></td> -->
  <!--   <td><img src="https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg" alt="Python" width="50" style="filter: grayscale(100%) blur(2px)"/></td> -->
  <!--   <td><img src="https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg" alt="Ruby" width="50" style="filter: grayscale(100%) blur(2px)"/></td> -->
  <!--   <td></td> -->
  <!-- </tr> -->
</table>

> ℹ️ I've personally optimized the styling and theme robustness for these
> languages extensively enough to confidently say they look _acceptable_ for me
> to invite you to use this colorscheme, if you happen to build software with
> them.

**Coming Soon**: Lua ✅, Vimscript (in progress), Rust, Python, Ruby, Bash, and
many more!

## 🧩 Plugins Supported

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

## 🎇 Credits

- [Sarah Drasner](https://github.com/sdras) first and foremost, for creating
  such a beautiful and artistic color scheme that has made, for me personally,
  so much more _pleasurable_ the exhilirating act of building software.
- <https://www.monolisa.dev/> for one of the sweetest programming fonts out
  there.

## 🤝 Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
