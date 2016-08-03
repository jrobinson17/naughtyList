
#!/bin/bash

#List open issues (In Current Repo)
curl -k -v https://api.github.com/repos/docker/docker/issues/events >> txt.sh

#List users who have open issues
cat txt.sh |grep "login" >> naughty.txt
rm -rf txt.sh

 curl --data "{"description": "Users with Outstanding Issues",  "public": true, "files": {   "troublemakers.txt": { "content": $(pwd)/naughty.txt } } }  "https://api.github.com/gists
