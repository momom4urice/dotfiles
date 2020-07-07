# Basic directories
config[settings_directory]=$HOME/.settings
config[applications_directory]=$HOME/Applications
config[source_directory]=$HOME/Documents/src

# Miniconda
config[miniconda]=$HOME/miniconda3

# Go
config[go]=$HOME/go

# Homebrew & Macports
config[macports]="no"
config[homebrew]="yes"

# Fix broken locales
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8

# Fix iterm2 error messages
if ! type iterm2_print_user_vars | grep -q '^function$' 2>/dev/null; then
    # echo "Defining iterm2_print_user_vars"
    iterm2_print_user_vars() {}
fi
