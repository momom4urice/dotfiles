# Source directory
if [ -n "${config[settings_directory]+1}" ]; then
    export SETTINGS_DIRECTORY=${config[settings_directory]}
fi

# Settings directory
if [ -n "${config[source_directory]+1}" ]; then
    export SOURCE_DIRECTORY=${config[source_directory]}
fi

# Path setting: Miniconda
if [ -n "${config[miniconda]+1}" ]; then
    source ${config[miniconda]}/bin/activate
    # Activate tab completion if using zsh
    if [ -n "$ZSH_VERSION" ]; then
        # assume Zsh
        fpath+="${config[settings_directory]}/conda-zsh-completion"
        compinit conda
    fi
fi

# Path setting: Go
if [ -n "${config[go]+1}" ]; then
    export GOPATH=${config[go]}
    export PATH="$GOPATH/bin:$PATH"
fi

# Path setting: custom apps
if [ -n "${config[applications_directory]+1}" ]; then
    export PATH=${config[applications_directory]}/bin:$PATH
fi

# direnv local environment management system
if hash direnv 2>/dev/null; then
    eval "$(direnv hook zsh)"
fi

# apparish bookmark system
source ${config[settings_directory]}/apparish/apparish.sh
