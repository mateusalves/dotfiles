# Vim configuration

- Neovim

    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o /tmp/nvim.appimage
    
    sudo mv /tmp/nvim.appimage /usr/local/bin/nvim
    
    chmod +x /usr/local/bin/nvim

- Install plugins

    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

- Install silver searcher

    apt-get install silversearcher-ag

- Install ccls

    sudo apt install ccls

- Install pynvim

    python3 -m pip install pynvim