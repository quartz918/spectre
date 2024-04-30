#!/bin/zsh
openssl enc -d -aes-256-cbc -salt -out folder.zip -in enc.file 

unzip folder.zip
rm folder.zip