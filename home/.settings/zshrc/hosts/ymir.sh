# Basic directories
config[settings_directory]=$HOME/.settings
config[applications_directory]=$HOME/Applications
config[source_directory]=$HOME/Documents/src

# Text editors
export VISUAL="vim"
export EDITOR="vim"

# Miniconda
config[miniconda]=$HOME/miniforge3

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Pipx
export PATH="$PATH:$HOME/.local/bin"

# Go
config[go]=$HOME/go

# Fix broken locales
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
