# Dotfiles (Mateus Alves)
<p align="left">
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=50fa7b&labelColor=0A1033">
</p>

### 1 - Pre-dependencies
### 1.1 Init.lua dependencies
### 1.2 ricing dependencies

### 2 - Symbolic links

```
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.gdbinit ~/.gdbinit
# only after symlink from ricing
ln -s $(pwd)/bin/tmux-sessionizer $HOME/bin/tmux-sessionizer
ln -s $(pwd)/config.yaml ~/.config/clangd
```
