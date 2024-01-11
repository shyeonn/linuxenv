git clone https://github.com/shyeonn/linuxenv.git

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

cp ./linuxenv/.vimrc ~/
cp ./linuxenv/.bashrc ~/
cp ./linuxenv/.tmux.conf ~/
cp -r ./linuxenv/script ~/

source .bashrc

git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc
rm -rf ble.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir ~/.vim/colors

git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle
cp ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
