####快速配置
	git clone https://github.com/nullne/vimrc.git ~/.vim
	
	# 安装基本版
	~.vim/basic_install.sh
	
	# 安装终极版
	~/.vim/ultimate_install.sh

####注意
- 自动补全

	目前使用YCM，编译环境为mac os X，如果需要在其他平台使用，需要手动安装
		
		cd ~/.vim/bundle/YouCompleteMe
		./install.py  --racer-completer --gocode-completer         # 如果需要支持其他语言，查阅README文件
	每一种语言的自动补全机制都不相同，需要特定的去进行补全。
	- Go

	dsf 
	- Python