
# install zsh if it is not installed already
if ! [ -x zsh ]; then
    sudo apt install zsh
fi

# setup OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# configure omz with my custom config
mkdir ~/.oh-my-zsh/custom/
echo "cloning custom.tar to  \$ZSH/custom"
curl -fsSL https://tex479.github.io/setup/zsh/custom.tar > ~/.oh-my-zsh/custom/
tar -xf ~/.oh-my-zsh/custom/custom.tar -C ~/.oh-my-zsh/custom/
rm ~/.oh-my-zsh/custom/custom.tar

echo "cloning .zshrc"
curl -fsSL https://tex479.github.io/setup/zsh/.zshrc > ~/.zshrc

echo "done"
