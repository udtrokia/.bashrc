#system
# PS1='\033[36m ℷ\033[0m '
PS1=' ℷ '

# path
export PATH=/usr/local/bin:$PATH:/usr/local/Homebrew/bin
export PATH=$PATH:$HOME/.local/bin
## Go path
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go
## Brew path
export GPG_TTY=$(tty)
export PATH="/usr/local/sbin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
## Cargo path
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
## Flutter path
export PATH=$PATH:/usr/local/share/flutter/bin
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
## WASM SDK PATH
export PATH=$PATH:/usr/local/Cellar/wabt/bin

## iOS simulator
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/"
# cmd
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias e="emacs"
alias chez="scheme --script"
alias ss="scheme"
alias rb="ruby"
alias cl="clisp"
alias py="python3 -m"
alias pip="pip3"
alias pj="phantomjs"

alias blog="cd $HOME/code/blog/_posts"



# color
export TERM="xterm-256color"

# proxy
function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "proxy off"
}

function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy=$http_proxy
    echo -e "proxy on"
}


# git proxy
function git_proxy_on(){
    git config --global https.proxy 'http://127.0.0.1:1080'
    git config --global https.proxy 'https://127.0.0.1:1080'
    git config --global http.proxy 'socks5://127.0.0.1:1080' 
    git config --global https.proxy 'socks5://127.0.0.1:1080'
    echo -e "git proxy on"
}

function git_proxy_off(){
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo -e "git proxy off"
}

# emsdk
PATH=$PATH:/usr/local/share/emsdk
PATH=$PATH:/usr/local/share/emsdk/clang/e1.38.6_64bit
PATH=$PATH/usr/local/share/emsdk/node/8.9.1_64bit/bin
PATH=$PATH:/usr/local/share/emsdk/emscripten/1.38.6

## Setting environment variables:
EMSDK=/usr/local/share/emsdk
EM_CONFIG=/Users/mercury/.emscripten
BINARYEN_ROOT=/usr/local/share/emsdk/clang/e1.38.6_64bit/binaryen
EMSCRIPTEN=/usr/local/share/emsdk/emscripten/1.38.6
