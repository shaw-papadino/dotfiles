#!/bin/bash

# TARGET=(all, work, hobby)
TARGET=${1:-"all"}

echo "Xcodeをインストールします..."
xcode-select --install

#----------------------------------------
# Homebrew
#----------------------------------------
echo "Homebrewをインストールします..."
# homebrewの存在確認後、なければインストール
if ! type brew > /dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# echo "brew docterを実行します..."
brew doctor

# echo "brew updateを実行します..."
brew update

# echo "brew upgradeを実行します..."
brew upgrade

echo ".Brewfileで管理しているパッケージをインストールします... TARGET: $TARGET"
brew bundle --file=./.Brewfile_common
if [ "$TARGET" = "work" ]; then
    brew bundle --file=./.Brewfile_work
elif [ "$TARGET" = "hobby" ]; then
    brew bundle --file=./.Brewfile_hobby
else
    brew bundle --file=./.Brewfile_work
    brew bundle --file=./.Brewfile_hobby
fi

# echo "brew cleanupを実行します..."
brew cleanup

#----------------------------------------
# プログラミング言語
#----------------------------------------
echo "プログラミング言語をインストールします..."

if ! type sdk > /dev/null 2>&1; then
    echo "SDKMANをインストールします..."
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
./_sdkman.sh
./_asdf.sh

#----------------------------------------
# シンボリックリンク
#----------------------------------------
echo "シンボリックリンクを作成します..."
./_link.sh
