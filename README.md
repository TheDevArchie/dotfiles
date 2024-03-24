# dotfiles
Holds all config files for various software

### Terminal
[Alacritty](https://alacritty.org/)


### Terminal Multiplexer
[Zellij](https://zellij.dev/)


### Editor
[Helix](https://helix-editor.com/)


### Shell
[zsh](https://www.zsh.org/)

[Starship](https://starship.rs/)


### CLI Tools
[brew](https://brew.sh/)

[lsd](https://github.com/lsd-rs/lsd)

### Theme
catppuccin-machiato


### Browser
Testing out Orion


### Productivity
[RayCast](https://www.raycast.com/)


### Misc.
[AppCleaner](https://freemacsoft.net/appcleaner/)

## How To
To install clone this repo:
```sh
git clone https://github.com/BlueNoteCoder/dotfiles.git
```

Next symlink this to the ~/.config dir.
> [!WARNING]
> Backup what you have in ~/.config first. This will overwrite everything!

Now symlink the repo to ~/.config.

> [!IMPORTANT]
> You may have to use absolute paths.

```sh
ln -s <path to the dotfiles repo> ~/.config  
```
