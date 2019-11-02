git clone --bare https://github.com/michaelsvit/dotfiles.git $HOME/.config/dotfiles
function dotfiles {
	/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME $@
}
dotfiles checkout master
dotfiles config status.showUntrackedFiles no
