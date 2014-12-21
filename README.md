node-install [![travis.ci-org build status](https://api.travis-ci.org/kaizhu256/node-install.svg)](https://travis-ci.org/kaizhu256/node-install)
============
shell script to install nodejs on vanilla linux vm
![screenshot](http://kaizhu256.github.io/node-install/screenshot.png)



## usage example
```
# download and install nodejs to $HOME/bin
eval "$(curl -fLSs http://kaizhu256.github.io/node-install/node-install.sh)"
# add $HOME/bin to $PATH
export PATH=$HOME/bin:$PATH
# test nodejs
node -e "console.log(process.version)"
```



## package content
- .travis.yml
  - travis-ci config file
- README.md
  - readme file
- node-install.sh
  - shell script installing nodejs



## todo
- none



## changelog
#### 2014.12.21
- initial commit
