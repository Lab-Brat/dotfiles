### dotfiles
This repository is a collection of all my dotfiles (.blabla) 
that I use to configure nvim, tmux and many other Linux programs. 

#### Neovim
Neovim configuration:
`nvim`

**Note**: `OPENAI_API_KEY` env variable is required to use ChatGPT in neovim

#### tmux
Default installation:
```bash
# install tmux
sudo pacman -S tmux

# copy config
cp .tmux.conf ~/.tmux.conf

# install plugins and apply config
tmux
vim ~/.tmux.conf
# <prefix> + I -> installs plugins
tmux source ~/.tmux.conf
```

Links:
* [[Link](https://github.com/tmux-plugins/tpm)] - tmux plugins

#### zsh
Installation:
```bash
sudo pacman -Syu zsh
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

