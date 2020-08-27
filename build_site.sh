#!/bin/bash
set -eux

git checkout master
rm -r ./*
git checkout site-source -- _site/
mv _site/* .
rmdir _site
git reset HEAD .
