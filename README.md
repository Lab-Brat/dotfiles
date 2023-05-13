### dotfiles
This repository is a collection of all my dotfiles (.blabla) 
that I use to configure nvim, tmux and many other Linux programs. 

#### Neovim
Neovim configuration:
`nvim`

#### LunarVim
Default installation:
```bash
# install node js and rust
sudo pacman -S node
curl https://sh.rustup.rs -sSf | sh
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```
  
Links:
* [[Link](https://www.lunarvim.org)] - LunarVim official website
* [[Link](https://github.com/LunarVim/LunarVim)] - LunarVim Github repository
* [[Link]](https://github.com/github/copilot.vim) - Github Copilot plugin


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

