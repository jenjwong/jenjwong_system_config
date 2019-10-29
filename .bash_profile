# exports =============================================================

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export NPM_TOKEN=d39afb7a-b437-4ab1-8cc5-3a3bc4999a6e
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases =============================================================

alias kb="code ~/.config/karabiner/karabiner.json"
alias bp="vim ~/.bash_profile"
alias brc="vim ~/.bashrc"

alias v.="code ."
alias s="npm run start"
alias dc="docker-compose logs -f"


alias d="cd ~/Desktop"
alias h="cd ~"
alias r="cd /"
alias w="cd ~/repos"

alias ls='ls -G'
alias grep='grep --color=auto'



alias lsp="sudo lsof -PiTCP -sTCP:LISTEN"

alias g="git"
alias r="source ~/.bash_profile"


alias gconf="code ~/.gitconfig"

alias l="gulp lint"
alias fix="gulp lint-fix"


# color terminal pathname =============================================================

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

function clone {
url=$1;
reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//');
git clone $url $2;
cd $2;
v .
npm i
}

. ~/.bash_prompt
