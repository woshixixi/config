ZSH_THEME="robbyrussell"

 plugins=(
   git
   vscode
   python
   colorize
   autojump
   zsh-autosuggestions
 )

source $ZSH/oh-my-zsh.sh

bindkey ^A autosuggest-accept
alias cat="pygmentize -g"