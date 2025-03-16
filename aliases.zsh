#ALIASSES
alias l='eza -l --all --group-directories-first --git'
alias lt='eza -lT --git-ignore --level=2'
alias p='pstorm .'
alias c='code -n .'
alias less='bat'
alias gdt='godot -e . &!'

# NPM
alias nci='npm ci'
alias nd='npm run dev'
alias ni='npm i'
alias nl='npm run lint:all'
alias nr='npm run '
alias ns='npm start'
alias nis='npm i && npm start'
alias nid='npm i && npm run dev'
alias nt='npm test'
alias nty='npm run type-check'
alias ntt='nt && nty'

# YARN
alias ys='yarn start'

# GIT
alias gu='git up'
alias gp='git p'
alias gpf='git pf'
alias gs='git switch '
alias gb='git b '
alias gl='git lg'
alias lg='git lg'
alias st='git st'
alias gst='git st'
alias ghb='gh browse'

# open the current github url in browser
alias gho="git remote get-url origin | sed 's/:/\//' | sed 's/git@/https:\/\//' | xargs open -u"

alias sm='git switch main && git up'
alias sd='git switch develop && git up'

# Symfony
alias console="php bin/console"
alias cc="console cache:clear"

# K9S
alias k9sr="k9s --readonly"

# Python
alias p3='python3'
alias pc='pycharm .'
alias bp='bpython'