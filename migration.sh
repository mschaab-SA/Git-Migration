#!/bin/bash
# $1 original repo
# $2 branch to clone
# $3 new repo
git clone $1 temp-dir
cd temp-dir
git branch -a
git checkout $2
git fetch --tags
git remote rm origin
git remote add origin $3
git push origin --all
git push --tags
cd ..
rm -rfd temp-dir
