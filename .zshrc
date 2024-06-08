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
alias et="eza -T"
alias el="eza -l"
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

. /usr/local/opt/asdf/libexec/asdf.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
