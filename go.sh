#!/bin/sh

read -e -p "Name of package: " name
read -e -p "Description of package: " description

sed -i -e "s/{NAME}/$name/g" Readme.md package.json
sed -i -e "s/{DESCRIPTION}/$description/g" Readme.md package.json

cat Readme.md | sed '27,$d' > Readme2.md
mv Readme2.md Readme.md

rm *.*-e
rm go.sh
rm -rf .git

git init .
git add -A
git commit -am 'Initial commit'
