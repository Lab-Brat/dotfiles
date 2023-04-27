### dotfiles
This repository is a collection of all my dotfiles (.blabla) 
that I use to configure nvim, tmux and many other Linux programs.  

#### NvChad
Default installation:
```bash
# install nvim and nvchad
sudo pacman -S nvim 
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# copy configs
cp -r ./nvim/* ~/.config/nvim/
```
  
Links:
* [[Link](https://nvchad.com)] - NvChad official website
* [[Link](https://github.com/NvChad/NvChad)] - NvChad Github repository


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

