# setup

```
git clone https://github.com/QingxianLai/confs.git ~/.dotfiles
```

if non zsh:
```
cp ~/.dotfiles/non-zsh/git-* ~/
cat ~/.dotfiles/non-zsh/.bash_profile >> ~/.bash_profile
```

configure vim
```
ln -sf ~/.dotfiles/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```
Note: install meslo font from [powerline-fonts][https://github.com/Lokaltog/powerline-fonts]


configure tmux
```
ln -sf ~/.dotfiles/tmux_conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
```
