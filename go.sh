#!/bin/sh

read -e -p "Name of package: " name
read -e -p "Description of package: " description

sed -i -e "s/{NAME}/$name/g" README.md package.json
sed -i -e "s/{DESCRIPTION}/$description/g" README.md package.json

rm *.*-e
rm go.sh
rm -rf .git

git init .
git add -A
git commit -am 'Initial commit'
