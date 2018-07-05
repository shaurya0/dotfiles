DOTFILES="$(find . -name ".*" -type f)"
for f in $DOTFILES; do
	mv $f ~/
done


