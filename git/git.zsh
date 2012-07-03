# git aliases
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gdc='git diff --cached'
alias gs='git s'
alias gss='git stash save'
alias gsp='git stash pop'
alias gmv='git mv'
alias grm='git rm'
alias grn='git_rename'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias sub-pull='git submodule foreach git pull origin master'
# a simple git rename file function
# git does not track case-sensitive changes to a filename.
function git_rename() {
    git mv $1 "${2}-"
    git mv "${2}-" $2
}
