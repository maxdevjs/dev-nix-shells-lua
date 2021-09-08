{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
  inherit (lib) optional optionals;
  lua = unstable.lua5_3;
  luarocks = unstable.lua53Packages.luarocks;
  slls = unstable.sumneko-lua-language-server;
in

mkShell {
  buildInputs = [ lua luarocks slls ];
    # Live Reloading. As we change our views or assets,
    # it automatically reloads the page in the browser
    ++ optional stdenv.isLinux libnotify # For ExUnit Notifier on Linux
    ++ optional stdenv.isLinux inotify-tools # For file_system on Linux
    ++ optional stdenv.isDarwin terminal-notifier # For ExUnit Notifier on macOS
    ++ optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [
      # For file_system on macOS
      CoreFoundation
      CoreServices
    ]);


    shellHook = ''
      # this allows to install rocks in the local directory
      mkdir lua_modules

      # switch to dynamic version
      # https://leafo.net/guides/customizing-the-luarocks-tree.html
      export LUA_PATH=$PWD/lua_modules/share/lua/5.3/?.lua
      export LUA_CPATH=$PWD/lua_modules/lib/lua/5.3/?.so
      export PATH=$LUA_PATH:$LUA_CPATH:$PATH
      
      export LANG=en_US.UTF-8
      
      source ./setup
    '';
}
