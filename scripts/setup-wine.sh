#!/bin/bash
#
export WINEDEBUG=-all
mkdir -p $HOME/.jdk_cache
echo "Downloading JDK 7 update 72 for Windows"
wget -N -P $HOME/.jdk_cache --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-windows-x64.exe
echo "Installing the JDK into Wine TODO: only install if not already installed"
wine $HOME/.jdk_cache/jdk-7u79-windows-x64.exe /s STATIC=1 WEB_JAVA=0 
