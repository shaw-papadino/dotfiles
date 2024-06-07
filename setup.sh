#!bin/bash

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

echo "brew docterを実行します..."
brew doctor

echo "brew updateを実行します..."
brew update

echo "brew upgradeを実行します..."
brew upgrade

echo ".Brewfileで管理しているパッケージをインストールします..."
brew bundle --file=./.Brewfile

echo "brew cleanupを実行します..."
brew cleanup

#----------------------------------------
# プログラミング言語
#----------------------------------------
echo "プログラミング言語をインストールします..."
./_asdf.sh

#----------------------------------------
# シンボリックリンク
#----------------------------------------
echo "シンボリックリンクを作成します..."
./_link.sh