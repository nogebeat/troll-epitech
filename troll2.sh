#!/usr/bin/env bash

# Fichier cible (~/.bashrc ou ~/.zshrc)
TARGET="$HOME/.bashrc"

# Contenu du prank
ANNIVERSAIRE_SCRIPT='
# === Joyeux anniversaire (hidden fun) ===
function anniversaire() {
  for i in {1..50}; do
    color=$((31 + RANDOM % 6))
    echo -e "\033[${color}m🎉 Joyeux anniversaire 🎉 $USER \033[0m"
    sleep 0.05
  done
  echo -e "\n\n"
}

alias ls="anniversaire && command ls --color=auto"
alias cd="anniversaire && builtin cd"
alias git="anniversaire && command git"
alias emacs="anniversaire && command emacs"
'

# Ajout de 60 lignes vides avant le contenu pour le "cacher"
{
  printf '\n%.0s' {1..260}
  echo "$ANNIVERSAIRE_SCRIPT"
} >> "$TARGET"
