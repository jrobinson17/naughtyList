
#!/bin/bash

#List users of Repository with open issues (Naughty List) 
#curl -k -v https://api.github.com/repos/docker/docker/issues/events >> txt.sh
#curl 'https://api.github.com/repos/docker/docker/issues/events' | grep login >> naughty.txt
curl -s -X GET https://api.github.com/repos/docker/docker/issues/events |grep -Po '(?<="login": ")[^"]*' >> naughty.txt
#cxxxcurl -H "Content-Type: application/json" -d '{"description": "the description for this gist","public": true,"files": {"naughty.txt": {"content": "String file contents  '@naughty.txt'" }}}' https://api.github.com/gists |grep url

# curl -H "Content-Type: application/json" -d '{"description": "the description for this gist","public": true,"files": {"naughty.txt": {"content": "String file contents  '@naughty.txt'" }}}' https://api.github.com/gists |grep url
