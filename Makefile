files = .alias .bashrc .bash_profile .profile .zshrc \
		.zprofile .Rprofile .vimrc .vim .nvimrc .nvim .gitconfig .tmux.conf

all:
	for f in $(files); do echo $$f; rm ./$$f 2>/dev/null; cp -r ~/$$f ./$$f; done \
	&& git add -A \
	&& git commit -m "Update dotfiles at $$(date)" \
	&& git push

bootstrap:
	for f in $(files); do echo $$f; cp -r ./$$f ~/$$f; done
