#!/bin/sh
cd $(dirname "$0")
ln -fs $(pwd)/ultimate.vim ~/.vimrc

rm -rf ~/.vim/bundle/*
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

vim +BundleInstall! +qa

cd bundle
for ext in `ls .`; do
	cd $ext
	git reset --hard HEAD
	cd ..
done
cd ..
