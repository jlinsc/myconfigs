## Environmental variables
cur_path=$(shell pwd)
vim_dir=$(cur_path)

all: vim_install fish_install zsh_install

git_snap:
	git config --global user.email "jlin@snapchat.com"
	git config --global user.name "jlinsc"

## install for vim
vim_install:
	ln -s $(vim_dir)/vim $(HOME)/.vim
	ln -s $(vim_dir)/vimrc $(HOME)/.vimrc
	chmod 755 $(HOME)/.vim
	chmod 755 $(HOME)/.vimrc

## install for zsh 
zsh_install:
	wget --no-check-certificate http://install.ohmyz.sh -O - | sh
	ln -s zshrc $(HOME)/.zshrc
	chmod 755 $(HOME)/.zshrc

## install for fish
fish_install:
	ln -s fishrc.fish ~/.config/fish/config.fish
	chmod 755 ~/.config/fish/config.fish

## remove all installed files
clean:
	rm -rf ~/.config/fish/config.fish	
	rm -rf $(HOME)/.zshrc
	rm -rf $(HOME)/.vimrc
	rm -rf $(HOME)/.vim

