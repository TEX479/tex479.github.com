
sudo apt-get update
# install dependencies if it is not installed already
sudo apt-get install git zsh fonts-powerline fzf zoxide command-not-found

# curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz

# setup OhMyZsh
export RUNZSH="no"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# configure omz with my custom config
mkdir ~/.oh-my-zsh/custom/
echo "cloning custom.tar to  \$ZSH/custom"
curl -fsSL https://tex479.github.io/setup/zsh/custom.tar > ~/.oh-my-zsh/custom/custom.tar
tar -xf ~/.oh-my-zsh/custom/custom.tar -C ~/.oh-my-zsh/custom/
rm ~/.oh-my-zsh/custom/custom.tar

echo "cloning .zshrc"
curl -fsSL https://tex479.github.io/setup/zsh/.zshrc > ~/.zshrc

