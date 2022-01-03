## nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

autoload -U compinit && compinit -u
zstyle ':completion:* ' menu select
# autocomplete with case insensitive
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*''1:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots) # Includes hidden files

# plugins
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/.zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
source ~/.zsh/plugins/zsh-auto-nvm-use/zsh-auto-nvm-use.plugin.zsh 2>/dev/null

# spaceship
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_HG_SHOW=false
SPACESHIP_CHAR_SYMBOL=">"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTET_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false
SPACESHIP_USER_SHOW=false
SPACESHIP_HOST_SHOW=false
SPACESHIP_HOST_SHOW_FULL=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false

# initialize spaceship
autoload -U promptinit; promptinit
prompt spaceship

