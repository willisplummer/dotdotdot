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
ln -s ~/dotfiles/nvim/* ~/.config/nvim/
```
## tmux
```
mkdir ~/.config/tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## karabiner
```
mkdir ~/.config/karabiner
ln -s ~/dotfiles/karabiner/* ~/.config/karabiner/assets/complex_modifications/`
```
## Kanata

Pretty elaborate setup - see the github.
For debugging any weirdness, test your raw input with their simulator https://jtroo.github.io/
