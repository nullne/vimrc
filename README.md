####快速配置
	git clone https://github.com/nullne/vimrc.git ~/.vim
	
	# 安装基本版
	~.vim/install_basic.sh
	
	# 安装终极版(需要十几分钟下载各种包)
	~/.vim/install_ultimate.sh

####注意
- 自动补全
    - Neocomplete  
        默认使用neocomplete, 前提是所安装的VIM开启lua,具体安装可参照这个[gist](https://gist.github.com/nullne/f6de4fcb01f1602429db02f8332a6ea2)
    - YouCompleteMe  
        如需使用YCM，可参照下面的步骤完成安装
        1. 注释掉`~/.vim/ultimate.vim`中所有关于neocomplete的部分，移除关于YCM的注释,然后执行安装脚本
        2. 编译环境为mac os X，如果需要在其他平台使用，需要手动安装
		    
		        # Prerequisite: cmake, Cargo
		        cd ~/.vim/bundle/YouCompleteMe
		        ./install.py  --racer-completer --gocode-completer         # 如果需要支持其他语言，查阅README文件

	配置好补全插件之后，需要安装一些语言的语法工具。每一种语言的自动补全机制都不相同，需要特定的去进行补全。非本地长时间使用建议直接配置basic即可。配置ultimate版本需要后续安装相关的工具
	
	- Go
        打开VIM之后执行: `:GoInstallBinaries`
	- Python
