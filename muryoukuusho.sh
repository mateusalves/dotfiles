PURPLE=$(printf '\033[35m')

echo "${PURPLE}Updating and installing essential tools."
sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev python3-pip xclip nodejs

echo "${PURPLE}Installing oh my zsh."
sudo rm -r $HOME/.oh-my-zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo rm $HOME/.zshrc
#sudo cp .zshrc $HOME
chsh -s $(which zsh)

echo "${PURPLE}Installing tmux."
sudo apt install -y tmux
sudo mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
#sudo cp .tmux.conf $HOME

while getopts t: flag
do
    case "${flag}" in
        t) rasp=${OPTARG};;
    esac
done

if [ $rasp ]
then
  echo "${PURPLE}Installing nvim on Raspberry."
  sudo apt install -y snapd
  sudo snap install --classic nvim
  sudo cp /snap/bin/nvim /usr/local/bin/
else
  echo "${PURPLE}Installing nvim on PC."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  sudo mv nvim.appimage /usr/local/bin/
  chmod +x /usr/local/bin/nvim
fi

echo "${PURPLE}Installing other dependencies."
sudo apt install -y silversearcher-ag
sudo snap install --classic ccls
sudo cp /snap/bin/ccls /usr/bin/
python3 -m pip install pynvim

mkdir $HOME/.config/nvim/
echo "${PURPLE}Moving folder to where it belongs and creating symlinks"
#cp init.vim $HOME/.config/nvim/
#cp coc-settings.json $HOME/.config/nvim/
cp -r autoload/ $HOME/.config/nvim/
ln -s $(pwd)/init.vim $HOME/.config/nvim/init.vim
ln -s $(pwd)/coc-settings.json $HOME/.config/nvim/coc-settings.json
ln -s $(pwd)/.zshrc $HOME/.zshrc
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf

echo "${PURPLE}Done."
