DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sh -c 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
rm ~/.vimrc
cp $DIR/vimrc ~/.vimrc
vim +PlugInstall +UpdateRemotePlugins +qa


sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config/nvim
cp $DIR/init.vim ~/.config/nvim/init.vim

PYTHON2_PATH="$( whereis python2|cut -d' ' -f2 )"
PYTHON3_PATH="$( whereis python3|cut -d' ' -f2 )"
echo "let g:python_host_prog = '$PYTHON2_PATH'" >> ~/.config/nvim/init.vim
echo "let g:python3_host_prog = '$PYTHON3_PATH'" >> ~/.config/nvim/init.vim

nvim +PlugInstall +UpdateRemotePlugins +qa
