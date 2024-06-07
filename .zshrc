# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
# You may need to manually set your language environment
export LANG=ja_JP.UTF-8

##################################
### work
#################################

alias ..="cd ../"
alias ..2="cd ../../"
alias ..3="cd ../../../"
alias m="mkdir"
alias pwdc="pwd |tr -d '\n'|pbcopy"
alias et="exa -T"
alias el="exa -l"
alias c="pbcopy"

# git
alias g="git"
alias ga="g add"
alias gb="g branch"
alias gbr="gb -r"
alias gc="g commit"
alias gp="g push"
alias gf="g fetch"
alias gm="g merge"
alias gco="g checkout"
alias gl="g log --graph --decorate"
alias glo="gl --oneline"
alias gs="g status"
alias gpl="g pull"


export PATH="/Users/oka/.deta/bin:$PATH"

. /usr/local/opt/asdf/libexec/asdf.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/oka/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/oka/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/oka/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/oka/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$PATH:$(go env GOPATH)/bin
