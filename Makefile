## Environmental variables
cur_path=$(shell pwd)
vim_dir=$(cur_path)

all: vim_install

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
zsh:
	wget --no-check-certificate http://install.ohmyz.sh -O - | sh
	ln -s $(zsh_dir)/zshrc $(HOME)/.zshrc
	chmod 755 $(HOME)/.zshrc

## install for fish
fish:
	ln -s fishrc.fish ~/.config/fish/config.fish	

## remove all installed files
clean:
	rm -rf $(HOME)/.vimrc
	rm -rf $(HOME)/.vim

