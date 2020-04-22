printf "bash $BASH_VERSION\n"

# Set prompt
PS1="$ "

# Enable colorized output for `ls`
export CLICOLOR=1

# Enable shell options
shopt -s globstar
shopt -s cdspell
set -o vi

# Aliases
alias ll="ls -lah"
alias gits="git status"

mcd() {
    mkdir -p $1 && cd $_
}

# pip settings
export PIP_REQUIRE_VIRTUALENV=true 
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

gpip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}
