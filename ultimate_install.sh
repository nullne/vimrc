#!/bin/sh
cd $(dirname "$0")
ln -fs $(pwd)/vimrc ~/.vimrc

if [ ! -d ~/.vim_runtime/bundle/vundle ]; then
    rm -rf ~/.vim_runtime/bundle/*
    git clone git://github.com/gmarik/vundle.git ~/.vim_runtime/bundle/vundle
fi

vim +BundleInstall! +qa

cd bundle
for ext in `ls .`; do
	cd $ext
	git reset --hard HEAD
	cd ..
done
cd ..
