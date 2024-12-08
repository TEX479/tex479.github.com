
# install zsh if it is not installed already
if ! [ -x git ]; then
    sudo apt install git
fi

# install zsh if it is not installed already
if ! [ -x zsh ]; then
    sudo apt install zsh
fi

sudo apt-get install fonts-powerline
# curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz

# setup OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# configure omz with my custom config
mkdir ~/.oh-my-zsh/custom/
echo "cloning custom.tar to  \$ZSH/custom"
curl -fsSL https://tex479.github.io/setup/zsh/custom.tar > ~/.oh-my-zsh/custom/custom.tar
tar -xf ~/.oh-my-zsh/custom/custom.tar -C ~/.oh-my-zsh/custom/
rm ~/.oh-my-zsh/custom/custom.tar

echo "cloning .zshrc"
curl -fsSL https://tex479.github.io/setup/zsh/.zshrc > ~/.zshrc

if ! [ -x fzf ]; then
    sudo apt install fzf
fi
if ! [ -x zoxide ]; then
    sudo apt install zoxide
fi
sudo apt install command-not-found
