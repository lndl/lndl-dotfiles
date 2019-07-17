zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

alias ghci="docker run --rm -it haskell:8.6.5 ghci"
