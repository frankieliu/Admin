Need to install vc runtime libraries

https://answers.microsoft.com/en-us/windows/forum/all/vcruntime140dll-and-msvcp140dll-missing-in-windows/caf454d1-49f4-4d2b-b74a-c83fb7c38625

https://aka.ms/vs/17/release/vc_redist.x86.exe

https://github.com/neovim/neovim/issues/29516

# link
https://lazy.folke.io/installation

In what follows ~/.config/nvim is your Neovim configuration directory. On Windows, this is usually ~\AppData\o\nvim. To know the correct path for your system, run :echo stdpath('config').

# add a few more files
~/AppData/Local/nvim
mkdir lua
mkdir lua/config
mkdir lua/plugins

add lua/config/lazy.lua
add lua/plugins/table.lua  with return {}
add init.config

# installing firenvim
Not useful anymore
