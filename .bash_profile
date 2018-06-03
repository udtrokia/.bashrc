#ipfs
# PS1='\033[36m ℷ\033[0m '
PS1=' ℷ '

# brew
export GPG_TTY=$(tty)
export PATH="/usr/local/sbin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# path
export PATH=/usr/local/bin:$PATH:/usr/local/Homebrew/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/share/flutter/bin

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

# path
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

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


