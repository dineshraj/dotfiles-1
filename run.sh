if type git > /dev/null; then
    git clone https://github.com/dineshraj/dotfiles ~/.dotfiles
    chmod +x ~/.dotfiles
    cd ~/.dotfiles
    ./install.sh
else
    curl -LO https://github.com/dineshraj/dotfiles/archive/main.zip
    unzip main.zip
    rm -rf main.zip
    mv dotfiles-main ~/.dotfiles
    chmod +x ~/dotfiles
    cd ~/dotfiles
    ./install.sh
fi
