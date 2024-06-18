# dotfiles
Holds all config files for various software

### Terminal
[Alacritty](https://alacritty.org/)


### Terminal Multiplexer
[Zellij](https://zellij.dev/)


### Editor
[NEOVIM]


### Shell
[zsh](https://www.zsh.org/)

[Starship](https://starship.rs/)


### CLI Tools
[brew](https://brew.sh/)

[lsd](https://github.com/lsd-rs/lsd)

[bat]

### Theme
citruszest


### Browser
Testing out Orion


### Productivity
[RayCast](https://www.raycast.com/)


### Misc.
[AppCleaner](https://freemacsoft.net/appcleaner/)

## How To
To install clone this repo:
```sh
git clone https://github.com/TheDevArchie/dotfiles.git
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
FYI! New method is in the works utilizing Ansible-playbook
