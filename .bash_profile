#
# .bashrc
#

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# --- User defined Environmantal Varliables and Aliases ---
if [ -e ${HOME}/.evars ]; then
  source ${HOME}/.evars
fi

if [ -e ${HOME}/.alias ]; then
  source ${HOME}/.alias
fi

# --- python dev in virtual env ---
if [ -e /usr/local/bin/virtualenvwrapper.sh ]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# --- Functions ---
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

function proml {
case $TERM in
    xterm*)
        local TITLEBAR='\[\033]0;\t -- \u@\h:\w\007\]'
        ;;
    Eterm*)
        local TITLEBAR='\[\033]0;\t -- \u@\h:\w\007\]'
        ;;
    *)
        local TITLEBAR=''
        ;;
esac

PS1="\[\033[00;32m\]\u\[\033[00m\]@\[\033[00;36m\]\h\[\033[00m\]:\[\033[00;33m\]\W\[\033[00;34m\]\$(parse_git_branch)\[\033[00m\]\$ "

}


# --- Call function to customize prompt ---
proml



test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
