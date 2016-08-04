#!/bin/bash

#List users of Repository with open issues (Naughty List) 
curl -s -X GET https://api.github.com/repos/$1/$2/issues/events |grep -Po '(?<="login": ")[^"]*' >> naughty_$2.txt

#Push updated list to Gist
gist naughty_$2.txt >> naughty_$2.txt

#Push updated list to GitHub Repo
git add .
git commit -m 'changes for  $2'
git push origin master




