#!/bin/bash

for f in dot-files/* ; do
    file=$(basename $f)
    if [ ! -f $HOME/.$file ]
    then
        ln -s $f $HOME/.$file
    else
        rm $HOME/.$file
        ln -s $f $HOME/.$file
    fi
done
