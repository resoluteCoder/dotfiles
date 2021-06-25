#### WIP ####
# clone dotfiles
git clone git@github.com:resoluteCoder/dotfiles.git ~/Documents/dotfiles \
2> /dev/null

# create sym links for files
#ln -s ~/Documents/dotfiles/.tmux.conf ~/.tmux.conf
#ln -s ~/Documents/dotfiles/.vimrc ~/.vimrc

# install Plug Manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install ripgrep for better fzf
# $ sudo dnf install ripgrep -y

# replace fzf with ripgrep
#echo "export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'" >> ~/.bashrc

# install vim plugins
vim +PlugInstall! +qall
