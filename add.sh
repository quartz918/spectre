#!/bin/sh
if [[ $# -ne 1 ]]; then
    echo "Usage: $funcstack[1] <project name> $#"
    exit 1
fi

if [[ -d $1 ]]; then
    echo "Error: project ${$1} already exists"
    exit 1 
fi

if [ ! -d ".spectre" ]; then
mkdir .spectre;
touch .spectre/targets;
fi

echo $1 >> .spectre/targets

mkdir $1
mkdir $1/.spectre
touch $1/.spectre/excludes


