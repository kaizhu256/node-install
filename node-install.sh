shNodeInstall() {
  # this function installs nodejs
  # if nodejs is already installed, then return
  if [ "$(node -e 'console.log(process.version)')" = "v0.10.34" ]
  then
    return
  fi
  # init $NODE_PREFIX
  local NODE_PREFIX=node-v0.10.34-linux-x64;
  # create dir $HOME/bin
  mkdir -p $HOME/bin || return $?
  # download and untar nodejs
  curl -#L http://nodejs.org/dist/v0.10.34/$NODE_PREFIX.tar.gz |\
    tar -C $HOME/bin -xz || return $?
  # install nodejs
  rm -f $HOME/bin/node && ln -s $NODE_PREFIX/bin/node $HOME/bin/node || return $?
  # install npm binary
  rm -f $HOME/bin/npm && ln -s $NODE_PREFIX/bin/npm $HOME/bin/npm || return $?
  # add $HOME/bin to $PATH
  export PATH=$HOME/bin:$PATH
  # test nodejs
  printf 'testing nodejs ...\n'
  if [ "$(node -e 'console.log(process.version)')" = "v0.10.34" ]
  then
    printf 'test passed\n'
  else
    printf 'test failed\n'
    return 1
  fi
}

shNodeInstall
