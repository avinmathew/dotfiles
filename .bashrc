# Editor for git
export EDITOR=vim
export EXECJS_RUNTIME=Node

# Git bash status
function parse_git_dirty {
  if [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]]
  then
    echo -e " \e[0;31m✗\e[1;36m"
  else
    echo -e " \e[0;32m✓\e[1;36m"
  fi
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

case $TERM in
  ansi|screen|xterm*)
    PS1='\e[1;32m[\t][\w]\e[1;36m$(parse_git_branch)\e[0m\n> '
    export SUDO_PS1='\e[1;31m[\t][\w]\e[0m\n> '
  ;;
  *)
    PS1="\e[1;32m[\t][\w]\e[0m\n> "
    export SUDO_PS1="\e[1;31m[\t][\w]\e[0m\n> "
  ;;
esac

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Aliases
alias b='bundle exec'
alias ducks='du -chd 2 * | sort -rh | head -20'
alias ls='ls -la --color=auto --group-directories-first'
