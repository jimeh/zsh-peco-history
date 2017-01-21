# zsh-peco-history
# Search shell history with peco when pressing ctrl+r.
# https://github.com/jimeh/zsh-peco-history
#
# Based on: https://github.com/mooz/percol#zsh-history-search
# Get peco from: https://github.com/peco/peco
#
if which peco &> /dev/null; then
  function peco_select_history() {
    local tac
    ((($+commands[gtac])) && tac="gtac") || \
      (($+commands[tac])) && tac="tac" || \
      tac="tail -r"
    BUFFER=$(fc -l -n 1 | eval $tac | \
               peco $ZSH_PECO_HISTORY_OPTS --query "$LBUFFER")
    CURSOR=$#BUFFER # move cursor
    zle -R -c       # refresh
  }

  zle -N peco_select_history
  bindkey '^R' peco_select_history
fi
