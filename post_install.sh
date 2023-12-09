sudo pacman -Syu

sudo pacman -S neovim tmux npm github-cli wget curl lazygit ripgrep fd gcc unzip

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH

sudo npm i -g n

sudo n install latest

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

read -p "Do you want razer drivers? (y/n)" razer_drivers

if [[ $razer_drivers == "y" ]]; then
	sudo pacman -S linux-headers linux-lts-headers
	sudo gpasswd -a $USER plugdev
	sudo pacman -S openrazer-daemon
fi

gh auth login

gh repo clone DawidRoszman/LazyVimConfig ~/.config/nvim

gh repo clone DawidRoszman/tmux-config ~/tmux-config

~/tmux-config/install.sh

rm -rf ~/tmux-config

wget https://raw.githubusercontent.com/ThePrimeagen/.dotfiles/master/bin/.local/scripts/tmux-sessionizer -O ~/.config/tm-sess.sh

chmod u+x ~/.config/tm-sess.sh

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip -O ~/Documents/FiraCode.zip

unzip ~/Documents/FiraCode.zip -d ~/Documents/FiraCode
rm ~/Documents/FiraCode.zip
