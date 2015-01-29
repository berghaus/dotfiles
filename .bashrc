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

