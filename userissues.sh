
#!/bin/bash

#List users of Repository with open issues (Naughty List) 
#curl -k -v https://api.github.com/repos/docker/docker/issues/events >> txt.sh
#curl 'https://api.github.com/repos/docker/docker/issues/events' | grep login >> naughty.txt
curl -s -X GET https://api.github.com/repos/$1/$2/issues/events |grep -Po '(?<="login": ")[^"]*' >> naughty_$2.txt

#Push updated list to GitHub
git add .
git commit -m 'changes'
git push origin master
#curl -H -d '{  "name": "Hello-World",  "description": "This is your first repository",  "homepage": "https://github.com",  "private": false,  "has_issues": true,  "has_wiki": true,  "has_downloads": true } ' https://api.github.com/user/repos


#cxxxcurl -H "Content-Type: application/json" -d '{"description": "the description for this gist","public": true,"files": {"naughty.txt": {"content": "String file contents  '@naughty.txt'" }}}' https://api.github.com/gists |grep url

# curl -H "Content-Type: application/json" -d '{"description": "the description for this gist","public": true,"files": {"naughty.txt": {"content": "String file contents  '@naughty.txt'" }}}' https://api.github.com/gists |grep url



