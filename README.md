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
ln -sf ~/.dotfiles/.vim ~/.vim
ln -sf ~/.dotfiles/.vim/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
or
vi +PluginInstall +qall
```
