BLUE=$(printf '\033[34m')

echo "${BLUE}Updating and installing essential tools."
sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev python3-pip xclip

echo "${BLUE}Installing oh my zsh."
sudo rm -r ~/.oh-my-zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo rm ~/.zshrc
sudo cp .zshrc ~
chsh -s $(which zsh)

echo "${BLUE}Installing tmux."
sudo apt install -y tmux
sudo mv ~/.tmux.conf ~/.tmux.conf.backup
sudo cp .tmux.conf ~

while getopts t: flag
do
    case "${flag}" in
        t) rasp=${OPTARG};;
    esac
done

if [ $rasp ]
then
  echo "${BLUE}Installing nvim on Raspberry."
  sudo apt install -y snapd
  sudo snap install --classic nvim
  sudo cp /snap/bin/nvim /usr/local/bin/
else
  echo "${BLUE}Installing nvim on PC."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  sudo mv nvim.appimage /usr/local/bin/
  chmod +x /usr/local/bin/nvim
fi

echo "${BLUE}Installing other dependencies."
sudo apt install -y silversearcher-ag
sudo snap install --classic ccls
python3 -m pip install pynvim

sudo mkdir ~/.config/nvim/
sudo cp init.nvim ~/.config/nvim/
sudo cp -r autoload/ ~/.config/nvim/
sudo cp coc-settings.json ~/.config/nvim/

echo "${BLUE}Done."
