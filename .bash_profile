#ipfs
#export hash='QmS4ustL54uo8FzR9455qaxZwuMiUhyvMcX9Ba8nUH4uVv'
#export peer='QmXyQGyi5zQcHpaJNAEVG2y4bzNpK9uNbZKfuHVQQoohT2'

# PS1
# PS1='\033[36m ℷ\033[0m '
PS1=' ℷ '

# env
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# path
export PATH=/usr/local/bin:$PATH:/usr/local/Homebrew/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go
# export GOBIN=$HOME/go/bin

# cmd
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias e="emacs"
alias ss="scheme --script"
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
    echo -e "已关闭代理"
}

function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy=$http_proxy
    echo -e "已开启代理"
}
export GPG_TTY=$(tty)
