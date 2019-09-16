# vim
alias v='vim'
alias vrc='vim ~/.vimrc'

# zsh
alias zrc='vim ~/.zshrc'

# ls
alias ll='ls -lah'

# proxy
export http_proxy=
export https_proxy=
export no_proxy=localhost,127.0.0.1

# ss
alias pss='export all_proxy=socks5://127.0.0.1:1086; export http_proxy=http://127.0.0.1:1087; export https_proxy=http://127.0.0.1:1087; export no_proxy=localhost,127.0.0.1'

# Charles 
alias pch='export http_proxy=http://127.0.0.1:8888; export https_proxy=http://127.0.0.1:8888; unset no_proxy'

# unproxy all
alias unp='unset all_proxy; unset http_proxy; unset https_proxy; unset no_proxy'

# print proxy
alias echop='echo http_proxy; echo $http_proxy; echo ; echo https_proxy; echo $https_proxy; echo; echo no_proxy; echo $no_proxy;'


# Golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"



