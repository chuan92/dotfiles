# myurl: https://raw.githubusercontent.com/chuan92/dotfiles/master/startup.sh

# all dotfiles here
wget https://github.com/chuan92/dotfiles/archive/master.zip -O dotfiles.zip

# for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# output is dotfiles-master directory
unzip dotfiles.zip

# copy dotfiles to home directory
cp -r dotfiles-master/.[^.]* ~/

# remove temp files
rm -rf dotfiles-master dotfiles.zip
