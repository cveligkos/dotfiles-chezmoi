bindkey -e

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

bindkey '^J' vi-forward-blank-word
bindkey '^K' vi-backward-blank-word-end

bindkey '^[[3~' delete-char
bindkey '^[h' backward-delete-word
bindkey '^[[3;5~' delete-word

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey '^r' _atuin_search_widget
