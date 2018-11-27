mkdir -p temp
if ! [ -e ~/.zshrc ]; then
    sudo apt-get install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

else
    echo "zsh already installed"
fi

git clone https://gist.github.com/shaurya0/d22dd8d500a8e55adf444c9fe32cd99a temp
mv temp/agnoster-newline.zsh-theme ~/.oh-my-zsh/themes/


if [ ! -d ~/.fzf ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
else
    echo "fzf already installed"
fi

if ! [ -x "$(command -v bat)" ]; then
    wget https://github.com/sharkdp/bat/releases/download/v0.6.1/bat_0.6.1_amd64.deb -O temp/bat.deb
    sudo dpkg -i temp/bat.deb
else
    echo "bat already installed"
fi

if ! [ -x "$(command -v rg)" ]; then
    wget https://github.com/BurntSushi/ripgrep/releases/download/0.9.0/ripgrep_0.9.0_amd64.deb -O temp/ripgrep.deb
    sudo dpkg -i temp/ripgrep.deb
else
    echo "ripgrep already installed"
fi

sudo apt-get install nnn
sudo apt-get install fzy
sudo apt-get install autojump



rm -rf temp

cp .bashrc ~/.bashrc
cp .aliases ~/.aliases
cp .bindkeys.zsh ~/.bindkeys.zsh
cp .gdbinit ~/.gdbinit
cp .inputrc ~/.inputrc
cp .profile ~/.profile
cp .tmux.conf ~/.tmux.conf
cp .zshrc ~/.zshrc

mkdir -p ~/temp/nnn