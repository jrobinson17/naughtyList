# naughtyList

Thanks for checking out the naughty list!
-----

1. This script will simply run against any public GitHub repository and return a list of users who have open issues for a given repository.  
2. The list of users are uploaded to an anonymous gist & pushed back to this repository.  



This bash script is intended to run on Linux x86 systems.  
The script was tested against a RHEL 7.2 Operating System.  

Setup
-----

1.  Please install Ruby 1+ or later as this script has dependencies 
2.  Install the ruby gem for gist
```
gem install gist
```

Usage
-----

To use this script:

- 1. Fork this repo!
- 2. Git Clone this repo to your linux based system.  Examples use my username, this should be replaced with your accurate url. 
```
git clone https://github.com/jrobinson17/naughtyList.git 
```
- 3. Switch to the naughtyList directory and ensure the userissues.sh file has appropriate "execute" permissions enabled.  
```
cd naughtyList && chmod +x userissues.sh
```
- 4. Run the script with 2 arguments (user/org & repo name)  Ex. Github's repo developer.github.com
```
./userissues.sh  github  developer.github.com
```
- 5. The script should now be prompting you for github credentials to push to your repository.  
    You should now find a new file with your repo's name in the prefix.  This file has been uploaded to Gist and added to your forked repo.   
```
naughty_developer.github.com.txt
```

You will be able to find the URL of the Gist at the end of the naughty_reponame.txt file.  
