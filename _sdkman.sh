#!/bin/sh

# Kotlinのインストール
sdk install kotlin

# Scalaのインストール
sdk install scala

# Javaのインストール
sdk install java 17.0.2-open

# 使用するバージョンの設定
sdk use kotlin latest
sdk use scala latest
sdk use java 17.0.2-open