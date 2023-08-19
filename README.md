# DOTFILES

I think you need to install:
- fzf
- ripgrep
- tmux
- karabiner

Finally putting one of these together

## scripts
Note: you might have to make the dir first - unsure
`ln -s ~/dotfiles/scripts/* ~/.local/bin`

## zsh
`ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc`

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

