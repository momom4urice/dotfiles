# Source directory
if [ -n "${config[settings_directory]+1}" ]; then
    export SETTINGS_DIRECTORY=${config[settings_directory]}
fi

# Settings directory
if [ -n "${config[source_directory]+1}" ]; then
    export SOURCE_DIRECTORY=${config[source_directory]}
fi

# Path setting: Macports
if [ -n "${config[macports]+1}" ]; then
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
    export MANPATH="/opt/local/share/man:$MANPATH"
fi

# Path setting: Homebrew
if [ -n "${config[homebrew]+1}" ]; then
    export PATH="/usr/local/sbin:$PATH"
    export MANPATH="/usr/local/share/man:$MANPATH"
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

# apparish bookmark system
source ${config[settings_directory]}/apparish/apparish.sh

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
