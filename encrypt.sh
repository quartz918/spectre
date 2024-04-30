#!/bin/zsh
zmodload zsh/mapfile

targets=("${(f@)mapfile[.spectre/targets]}")

excludes=()
for target in $targets; do
    exclude=("${target}/${(f@)mapfile[${target}/.spectre/excludes]}\*");
    excludes+=("${exclude[@]}");
done

eval "zip -vr -qq folder.zip ${targets[@]} -x ${excludes[@]}"

openssl enc -aes-256-cbc -salt -in folder.zip -out enc.file

rm folder.zip

for target in $targets; do
    rm -R ${target};
done