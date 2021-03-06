#!/data/data/com.termux/files/usr/bin/bash

# パッケージを更新
yes | pkg upgrade
apt-get update && apt-get upgrade -y

# 内部ストレージへリンク
termux-setup-storage

# 必要なパッケージをまとめてインストール
apt-get install wget proot git -y

# Ubuntu導入

# ホームディレクトリへ移動
cd

# スクリプトをクローン
git clone https://github.com/MFDGaming/ubuntu-in-termux.git

# ディレクトリへ移動
cd ubuntu-in-termux

# シェルスクリプトに実行権限を付与
chmod +x ubuntu.sh

# Ubuntuを自動起動させるようにする
echo "cd ./ubuntu-in-termux
./startubuntu.sh" > .bashrc

# スクリプトを実行
./ubuntu.sh -y

# Ubuntuを起動
./startubuntu.sh

# Ubuntuのパッケージアップデート
apt update && apt upgrade -y

# 必要なパッケージをインストール
apt install wget git curl vim nano zsh language-pack-ja -y

# 日本語のロケールを設定
touch ~/bashrc
echo 'export LANG=ja_JP.UTF-8' >> ~/.bashrc
echo 'export LANGUAGE="ja_JP:ja"' >> ~/.bashrc

# プロジェクト管理ディレクトリを作成
mkdir ~/Documents
mkdir ~/Documents/vue-projects | mkdir ~/Documents/nuxt-projects | mkdir ~/Documents/react-projects | mkdir ~/Documents/next-projects

# Zshを起動
# zsh

# # GitHubからクローン
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# # 設定ファイルの構成
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# # Ubuntu側の.zshrcにエイリアスを追記
# echo "alias re='exec $SHELL -l'

# alias c='clear'
# alias q='exit'
# alias a='alias'
# alias h='history'

# # ls
# alias aglist='alias | grep ls' # 確認用
# alias ls='ls --color=auto'
# alias ls='ls -G'
# alias ll='ls -alF'
# alias ll='ls -lh'
# alias ll='ls -l'
# alias la='ls -A'
# alias la='ls -a'
# alias l='ls -CF'
# alias l='clear && ll'
# alias l='clear && ls'

# # Git
# alias aggit='alias | grep git' # 確認用
# alias g='git'
# alias ga='git add'
# alias gd='git diff'
# alias gs='git status'
# alias gp='git push'
# alias gb='git branch'
# alias gst='git status'
# alias gco='git checkout'
# alias gf='git fetch'
# alias gc='git commit'

# # cd
# alias agcd='alias | grep cd' # 確認用
# alias ..='cd ..'
# alias ...='cd ../..'
# alias ....='cd ../../..'

# # Yarn
# alias agy='alias | grep yarn' # 確認用
# alias y='yarn'
# alias ygl='yarn global list --depth=0'
# alias yal='yarn list --depth=0'
# alias yga='yarn global add'
# alias ya='yarn add'
# alias yad='yarn add --dev'
# alias yrm='yarn remobve'
# alias yupg='yarn upgrade'
# alias yout='yarn outdated'
# alias yrun-'yarn run'
# alias ysrun='yarn -s run'
# alias ydev='yarn dev'

# # apt
# alias agapt='alias | grep apt' # 確認用
# alias aptac='apt autoclean'
# alias aptc='apt crean'
# alias aptr='apt remove'
# alias apti='apt install'
# alias aptl='apt list'
# alias aptu='apt update && apt upgrade'
# alias apti='apt install'" > ~/.zshrc

# # 設定を反映
# source .zshrc

echo "Happy Hacking!"
exit