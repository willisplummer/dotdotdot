# DOTFILES

# SETUP

I think you need to install the following (with brew ideally):
- fzf
- ripgrep
- tmux
- neovim
- karabiner
- wezterm
- font-meslo-lg-nerd-font

## Git
```
git config --global user.name "Willis Plummer"
git config --global user.email "willisplummer@gmail.com"
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```


## scripts
Note: you might have to make the bin dir first - unsure

`ln -s ~/dotfiles/scripts/* ~/.local/bin`

## zsh

`ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc`

## wezterm

`ln -s ~/dotfiles/wezterm/.wezterm.config ~/.wezterm.config`

## nvim
```
mkdir ~/.config/nvim
ln -s ~/dotfiles/nvim/* ~/.config/nvim/
```
## tmux
```
mkdir ~/.config/tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## caps as ctrl-esc
### karabiner (for mac)
```
mkdir ~/.config/karabiner
ln -s ~/dotfiles/karabiner/* ~/.config/karabiner/assets/complex_modifications/`
```
### caps2esc (linux)
Not sure that this works as well as I want it to - could be issues with my keyboard or just needing to tweak the timing

basically I downloaded and built it and then edited /etc/udevmon.yaml


https://gitlab.com/interception/linux/plugins/caps2esc

