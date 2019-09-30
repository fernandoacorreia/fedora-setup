DEFAULT_USER=$(whoami)

source $HOME/fedora-setup/vendor/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# https://github.com/romkatv/powerlevel10k#antigen
antigen theme romkatv/powerlevel10k
source ~/fedora-setup/vendor/.purepower

antigen apply

source <(kubectl completion zsh)
source ~/.profile
