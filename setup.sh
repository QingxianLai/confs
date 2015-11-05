cat ./non-zsh/.bash_profile >> ~/.bash_profile

ln -s ./.vim/.vimrc ~/.vimrc
ln -s ./.vim ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vi +PluginInstall +qall
