#!/usr/bin/env bash

DEST_ROOT="configs"

mkdir -p "$DEST_ROOT/editors/vim/vanilla"
mkdir -p "$DEST_ROOT/editors/vim/neovim"
mkdir -p "$DEST_ROOT/editors/vim/lunarvim"
mkdir -p "$DEST_ROOT/editors/emacs"
mkdir -p "$DEST_ROOT/ides/intellij"
mkdir -p "$DEST_ROOT/ides/kiro/powers"
mkdir -p "$DEST_ROOT/ides/kiro/steering"
mkdir -p "$DEST_ROOT/shells/zsh"
mkdir -p "$DEST_ROOT/shells/bash"
mkdir -p "$DEST_ROOT/version-control/git"
mkdir -p "$DEST_ROOT/development/amazon-configs"
mkdir -p "$DEST_ROOT/terminal/tmux"
mkdir -p "$DEST_ROOT/ides/cursor"
mkdir -p "$DEST_ROOT/ides/windsurf"

cp ~/.vimrc "$DEST_ROOT/editors/vim/vanilla/" 2>/dev/null
cp ~/.zshrc "$DEST_ROOT/shells/zsh/" 2>/dev/null
cp ~/.bashrc "$DEST_ROOT/shells/bash/" 2>/dev/null
cp ~/.bash_profile "$DEST_ROOT/shells/bash/" 2>/dev/null
cp ~/. "$DEST_ROOT/shells/bash/" 2>/dev/null
cp ~/.gitconfig "$DEST_ROOT/version-control/git/" 2>/dev/null
cp -R ~/.config/nvim/* "$DEST_ROOT/editors/vim/neovim/" 2>/dev/null
cp -R ~/.config/lvim/config.lua "$DEST_ROOT/editors/vim/lunarvim/" 2>/dev/null
cp ~/.config/emacs/ "$DEST_ROOT/editors/emacs/" 2>/dev/null
cp ~/.spacemacs "$DEST_ROOT/editors/emacs/" 2>/dev/null
cp ~/.config/doom/config.el "$DEST_ROOT/editors/emacs/config.el" 2>/dev/null
cp ~/.config/doom/init.el "$DEST_ROOT/editors/emacs/init.el" 2>/dev/null
cp ~/.config/doom/packages.el "$DEST_ROOT/editors/emacs/packages.el" 2>/dev/null
cp ~/.ideavimrc "$DEST_ROOT/ides/intellij/" 2>/dev/null
cp -R ~/.kiro/powers/* "$DEST_ROOT/ides/kiro/powers/registry.json" 2>/dev/null
cp -R ~/.kiro/steering/* "$DEST_ROOT/ides/kiro/steering/" 2>/dev/null
cp -R ~/.kiro/settings/* "$DEST_ROOT/ides/kiro/" 2>/dev/null
cp "$HOME/Library/Application Support/Kiro/User/settings.json" "$DEST_ROOT/ides/kiro/settings.json" 2>/dev/null
cp "$HOME/Library/Application Support/Kiro/User/keybindings.json" "$DEST_ROOT/ides/kiro/keybindings.json" 2>/dev/null
cp ~/.cursor/mcp.json "$DEST_ROOT/ides/cursor/mcp.json" 2>/dev/null
cp ~/.cursor/extensions/extensions.json "$DEST_ROOT/ides/cursor/extensions.json" 2>/dev/null
cp "$HOME/Library/Application Support/Cursor/User/settings.json" "$DEST_ROOT/ides/cursor/settings.json" 2>/dev/null
cp "$HOME/Library/Application Support/Cursor/User/keybindings.json" "$DEST_ROOT/ides/cursor/keybindings.json" 2>/dev/null
cp ~/.windsurf/extensions/extensions.json "$DEST_ROOT/ides/windsurf/extensions.json" 2>/dev/null
cp "$HOME/Library/Application Support/Windsurf/User/settings.json" "$DEST_ROOT/ides/windsurf/settings.json" 2>/dev/null
cp "$HOME/Library/Application Support/Windsurf/User/keybindings.json" "$DEST_ROOT/ides/windsurf/keybindings.json" 2>/dev/null
cp ~/.aws/config "$DEST_ROOT/development/amazon-configs/aws-config" 2>/dev/null
