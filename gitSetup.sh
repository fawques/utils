#!/bin/bash

git config --global user.name "Víctor Guzmán"
git config --global user.email "fawques@gmail.com"
git config --global color.ui true
git config --global help.autocorrect 1
git config --global rebase.autosquash true

git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.br branch

# stash-unapply -> deshacer un "git stash apply"
git config --global alias.stash-unapply '!git stash show -p | git apply -R'
