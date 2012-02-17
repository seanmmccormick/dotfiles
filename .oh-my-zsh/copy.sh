#!/bin/bash
for x in tools templates oh-my-zsh.sh lib README.textile log plugins custom themes
do 
    cp -R ~/.oh-my-zsh/$x .
done
