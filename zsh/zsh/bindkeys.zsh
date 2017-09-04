# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey -v   # Default to standard VI bindings

bindkey -M viins "^J"    history-substring-search-down
bindkey -M viins "^K"    history-substring-search-up
