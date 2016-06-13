#!/bin/sh
cd $(dirname "$0")
ln -fs $(pwd)/ultimate.vim ~/.vimrc

if [ ! -d ~/.vim/bundle/vundle ]; then
    rm -rf ~/.vim/bundle/*
    git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vim +BundleInstall! +qa

cd bundle
for ext in `ls .`; do
	cd $ext
	git reset --hard HEAD
	cd ..
done
cd ..
