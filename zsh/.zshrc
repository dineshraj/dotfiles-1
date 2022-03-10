export PATH="/usr/local/sbin:$PATH"
export EDITOR=code

# uncomment to run zprof
# zmodload zsh/prof

# history
HISTSIZE=50000
SAVEHIST=10000

source ~/.antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    command-not-found
    colored-man-pages

    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-syntax-highlighting
EOBUNDLES
antigen apply

# load the rest of the configs
source $HOME/.dotfiles/zsh/.exports
source $HOME/.dotfiles/zsh/.aliases
# source $HOME/.dotfiles/zsh/.work

# set starship prompt
eval "$(starship init zsh)"

source $(brew --prefix nvm)/nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
