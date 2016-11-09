####快速配置
	git clone https://github.com/nullne/vimrc.git ~/.vim
	
	# 安装基本版
	~.vim/install_basic.sh
	
	# 安装终极版(需要十几分钟下载各种包)
	~/.vim/install_ultimate.sh

####注意
- 自动补全

	目前使用YCM，编译环境为mac os X，如果需要在其他平台使用，需要手动安装
	
	Prerequisite: cmake, Cargo
		
		cd ~/.vim/bundle/YouCompleteMe
		./install.py  --racer-completer --gocode-completer         # 如果需要支持其他语言，查阅README文件
	每一种语言的自动补全机制都不相同，需要特定的去进行补全。非本地长时间使用建议直接配置basic即可。配置ultimate版本需要后续安装相关的工具
	- Go
		- gocode
		- golint
		- govet
	- Python
