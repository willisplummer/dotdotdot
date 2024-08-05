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
ln -s ~/dotfiles/nvim/* ~/.config/nvim
```
## tmux
```
mkdir ~/.config/tmux
ln -s ~/dotfiles/tmux/* ~/.config/tmux
```
## karabiner
```
mkdir ~/.config/karabiner
ln -s ~/dotfiles/karabiner/* ~/.config/karabiner/assets/complex_modifications`
```

