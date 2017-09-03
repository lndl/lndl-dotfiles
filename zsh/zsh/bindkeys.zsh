# To see the key combo you want to use just do:
# cat > /dev/null
# And press it

bindkey -v   # Default to standard VI bindings

bindkey "^J"    history-substring-search-down
bindkey "^K"    history-substring-search-up
