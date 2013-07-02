# prompt coloreado con indicador de rama actual (si estamos en un repositorio GIT)
export PS1="\[\033[0;37m\]\u\[\033[0;36m\]@\[\033[0;37m\]\h \[\033[1;34m\]\w\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \[\033[0;35m\]{\[\033[0;37m\]\1\[\033[0;35m\]}/') \[\033[0;36m\]\$\[\033[0m\] "
export EDITOR=nano
export PATH=$PATH:.

alias ls='ls --color=yes'