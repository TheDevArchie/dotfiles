Info related to all the software currently in use.


### Terminal
  - Emulator: [kitty](https://sw.kovidgoyal.net/kitty/)
  - Multiplexer: [Zellij](https://zellij.dev/)
  - Editor: Neovim
    - Theme: eldritch
  - shell: [zsh](https://www.zsh.org/)
  - shell prompt editor: [Starship](https://starship.rs/)


### CLI Tools
  - [brew](https://brew.sh/)
  - [lsd](https://github.com/lsd-rs/lsd)
  - [bat]
  - [spicetify](https://spicetify.app/)


### Apps
  - [Zen](https://zen-browser.app/)
  - [RayCast](https://www.raycast.com/)
  - [AppCleaner](https://freemacsoft.net/appcleaner/)


### How To
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
FYI! New method utilizing Ansible-playbook is in the works.
