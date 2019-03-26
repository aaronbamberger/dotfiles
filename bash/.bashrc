# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export EDITOR=vim
export LESS=-R
export TZ=America/Chicago
alias grep="grep --color=always"
alias tmux="tmux -2"

function arista_ctags() {
   ctags -R --Python-kinds="+cfmv-i" --langmap="Python:+(__init__)" --langmap="c++:+.tin" --langmap="c++:+.itin" --langdef=tacc --langmap="tacc:.tac" --regex-tacc="/^[ \t]*([A-Za-z0-9_]+)[ \t]*:/\1/d,definition/" --regex-tacc="/^[ \t]*([A-Za-z0-9_]+)[ \t]*;/\1/e,enumerators/" --regex-tacc="/^[ \t]*([A-Za-z0-9_]+)[ \t]*;/\1_/e,enumerators/" --extra="+fq" --fields="+im"
}
