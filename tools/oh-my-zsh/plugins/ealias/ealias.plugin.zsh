typeset -a ealiases
ealiases=()

function ealias() {
  alias $1
  ealiases+=(${1%%\=*})
}

function expand-ealias() {
  if [[ $LBUFFER =~ "(^|[;|&])\s*(${(j:|:)ealiases})\$" ]]; then
    zle _expand_alias
    zle expand-word
    zle magic-space
  else
    zle magic-space
  fi
}

zle -N expand-ealias

bindkey -M viins ' '    expand-ealias
bindkey -M viins '^ '   magic-space  # control-space to bypass completion
bindkey -M isearch " "  magic-space  # normal space during searches
