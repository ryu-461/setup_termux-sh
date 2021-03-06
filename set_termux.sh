#!/data/data/com.termux/files/usr/bin/bash

# パッケージを更新
yes | pkg upgrade

# 内部ストレージへリンク
termux-setup-storage

# 必要なパッケージをまとめてインストール
yes | pkg install proot yarn git curl wget build-essential vim wget zsh

# Zshを既定のシェルに設定
chsh -s zsh

# .bashrcを作成
touch ~/.bashrc | echo "zsh" > ~/.bashrc

# .zshrcを作成
touch ~/.zshrc

# エイリアスの設定
echo "alias re='exec $SHELL -l'

alias c='clear'
alias q='exit'
alias a='alias'
alias h='history'

# ls
alias aglist='alias | grep ls' # 確認用
alias ls='ls --color=auto'
alias ls='ls -G'
alias ll='ls -alF'
alias ll='ls -lh'
alias ll='ls -l'
alias la='ls -A'
alias la='ls -a'
alias l='ls -CF'
alias l='clear && ll'
alias l='clear && ls'

# Git
alias aggit='alias | grep git' # 確認用
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'

# cd
alias agcd='alias | grep cd' # 確認用
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Yarn
alias agy='alias | grep yarn' # 確認用
alias y='yarn'
alias ygl='yarn global list --depth=0'
alias yal='yarn list --depth=0'
alias yga='yarn global add'
alias ya='yarn add'
alias yad='yarn add --dev'
alias yrm='yarn remobve'
alias yupg='yarn upgrade'
alias yout='yarn outdated'
alias yrun-'yarn run'
alias ysrun='yarn -s run'
alias ydev='yarn dev'

# apt
alias agapt='alias | grep apt' # 確認用
alias aptac='apt autoclean'
alias aptc='apt crean'
alias aptr='apt remove'
alias apti='apt install'
alias aptl='apt list'
alias aptu='apt update && apt upgrade'
alias apti='apt install'" > ~/.zshrc

echo Done!!
exit