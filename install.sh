sudo apt-get install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir -p temp
git clone https://gist.github.com/shaurya0/d22dd8d500a8e55adf444c9fe32cd99a temp
mv temp/agnoster-newline.zsh-theme ~/.oh-my-zsh/themes/

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
 ~/.fzf/install

wget https://github.com/sharkdp/bat/releases/download/v0.6.1/bat_0.6.1_amd64.deb -O temp/bat.deb
sudo dpkg -i temp/bat.deb

rm -rf temp

DOTFILES="$(find . -name ".*" -type f)"
for f in $DOTFILES; do
    cp $f ~/
done


