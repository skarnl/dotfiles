####### SETTINGS ####


#umask 0002

export APPLICATION_ENV=development
export SANDBOX_ID=oskar
export PATH=$PATH:/home/oskar/bin

# EDITOR
export VISUAL=vim
export EDITOR="$VISUAL"

export ZFILE=z2.yml
export ZPLUGINPATH=/home/oskar/bin/z-2.0/vendor/zicht/z-plugin-*

function z1 ()
{
    alias z=z-1
    export ZFILE=
    export ZPLUGINPATH=
}

function z2 ()
{
    unalias z
    export ZFILE=z2.yml
    export ZPLUGINPATH=/home/oskar/bin/z-2.0/vendor/zicht/z-plugin-*
}

#ALIASSES
alias l='ls -alH'
alias console='php app/console'
alias c='console'

alias cc='rm -rf app/cache/* && console cache:warmup'
alias dump='console doc:sch:up --dump-sql'
alias dup='console doc:sch:up --force'
alias dmm='console doc:mi:mi -n' 

alias css='z sass:update'
alias wss='z sass:watch'

alias t='utt'
alias ta='utt add'
#ta() { utt add "$@";}

# this does redefine the tr method from bash
alias tr='utt report --no-current-activity'
alias ts='utt stretch'
alias te='utt edit'

alias p='pstorm .'
alias switch='echo "#### SWITCH TO \e[33m${PWD##*/}\e[39m ####" && pstorm . && z d:u'
alias s='switch'

alias solrr='z solr:reindex development --local --purge --verbose'
