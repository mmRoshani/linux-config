update:
	@clear
	@echo "update from ~/.*"
	@cp ~/.zshrc ./zshrc
	@cp ~/.p10k.zsh ./p10k.zsh


s:
	@clear
	@echo "reload shell"
	@$SHELL

i-packages:
	@clear
	@echo "install zsh & gem"
	@sudo pacman --noconfirm -S zsh gem


i-ohmyz:
	@clear
	@echo "clone & installing OhMyZsh"
	@sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

i-p10:
	@clear
	@echo "clone & installing powerlevel10k"
	@git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

i-highlight:
	@clear
	@echo "clone & installing zsh-syntax-highlighting"
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

i-autosug:
	@clear
	@echo "clone & installing zsh-autosugeestions"
	@git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

i-colls:
	@clear
	@echo "clone & installing zsh-autosugeestions"
	@sudo gem install colorls

p-set-n:
	@clear
	@echo "setting up proxy for nekoray"
	export all_proxy=socks://127.0.0.1:2080/  && \
	export ALL_PROXY=socks://127.0.0.1:2080/  && \
	export http_proxy=http://127.0.0.1:2081  && \
	export HTTP_PROXY=http://127.0.0.1:2081  && \
	export https_proxy=http://127.0.0.1:2081  && \
	export HTTPS_PROXY=http://127.0.0.1:2081

p-set-c:
	@clear
	@echo "setting up proxy for clash-verge"
	export all_proxy=socks://127.0.0.1:7897/  && \
	export ALL_PROXY=socks://127.0.0.1:7897/  && \
	export http_proxy=http://127.0.0.1:7897  && \
	export HTTP_PROXY=http://127.0.0.1:7897  && \
	export https_proxy=http://127.0.0.1:7897  && \
	export HTTPS_PROXY=http://127.0.0.1:7897
