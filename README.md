# nix-shell for Lua

> WIP

## What is it?

A [nix-shell](https://nixos.org/manual/nix/stable/#description-13) template to setup a [Lua](http://www.lua.org/) development environment with [direnv](https://github.com/direnv/direnv) integration (if installed).

Built gathering inspiration from several [sources](#resources), it makes available:

- `unstable.lua5_3`
- `unstable.lua53Packages.luarocks`
- `unstable.`[sumneko/lua-language-server](https://github.com/sumneko/lua-language-server) ([LSP](https://microsoft.github.io/language-server-protocol/))

## Resources

### Direnv

- [Automating development environment set-up with Direnv](http://www.futurile.net/2016/02/03/automating-environment-setup-with-direnv/)
- [More prac­ti­cal direnv](https://rnorth.org/more-practical-direnv/)
  - [rnorth/.direnvrc](https://gist.github.com/rnorth/0fd5048da85957da39c17bd49c4ca922)

### Miscellaneous

- [About using Nix in my development workflow - Jean-Philippe Cugnet - Medium](https://medium.com/@ejpcmac/about-using-nix-in-my-development-workflow-12422a1f2f4c)
- [Lua](http://www.lua.org/)
- [LuaRocks Quick Start](https://luarocks.org/#quick-start)
- [sumneko_lua](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#sumneko_lua)
- [sumneko/lua-language-server](https://github.com/sumneko/lua-language-server)

## TODO

- [lorri](https://github.com/nix-community/lorri) integration
- [niv](https://github.com/joefiorini/niv)
- ...
- luajit
- [x] luaRocks
  - [x] [install LuaRocks](https://search.nixos.org/packages?channel=21.05&show=luajitPackages.luarocks&from=0&size=50&sort=relevance&query=luarocks)
  - [x] where to install rocks (locally)
    - [Using LuaRocks to install packages in the current directory](https://leafo.net/guides/customizing-the-luarocks-tree.html)
