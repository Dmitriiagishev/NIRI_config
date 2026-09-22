# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

zmodload zsh/zle
zle_highlight=(region:bg=cyan)

# Shift + Left/Right для выделения по символам
bindkey '^[[1;2D' backward-char
bindkey '^[[1;2C' forward-char

bindkey '^[[3~' delete-char        # Delete (альтернативный вариант)
bindkey '^[[3;5~' delete-word     # Ctrl + Delete

# Ctrl + Shift + Left/Right для выделения по словам
bindkey '^[[1;6D' backward-word
bindkey '^[[1;6C' forward-word

bindkey '^[[1;5D' backward-word   # Ctrl + Left
bindkey '^[[1;5C' forward-word    # Ctrl + Right

# Опционально: Ctrl + Shift + Left/Right для более широкого выделения
bindkey '^[[H' beginning-of-line  # Fn + Left
bindkey '^[[F' end-of-line       # Fn + Right

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dmitrii/.zshrc'
PROMPT='%F{#41a4ad}%n%f@%F{#01646d}%d%f$ '
autoload -Uz compinit
compinit
# Включение меню с автодополнением
zstyle ':completion:*' menu select

# Регистронезависимое дополнение
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Показывать описание для групп
zstyle ':completion:*' auto-description 'specify: %d'

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Настройка подсветки синтаксиса (только поддерживаемые стили)
ZSH_HIGHLIGHT_STYLES[command]='fg=#41a4ad'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#ff00ff'
ZSH_HIGHLIGHT_STYLES[path]='fg=#01646d'
ZSH_HIGHLIGHT_STYLES[option]='fg=#00ffff'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#9934ad'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#ff00ff'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#ff00ff'

autoload -Uz promptinit
promptinit

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search


# Created by `pipx` on 2026-03-30 08:31:26
export PATH="$PATH:/home/dmitrii/.local/bin"
fastfetch
