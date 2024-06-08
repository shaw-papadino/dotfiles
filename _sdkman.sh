#!/bin/sh

source "$HOME/.sdkman/bin/sdkman-init.sh"

# Javaのインストール
sdk install java 17.0.2-open
sdk use java 17.0.2-open

# Kotlinのインストール
sdk install kotlin
sdk use kotlin latest

# Scalaのインストール
sdk install scala
sdk use scala latest
