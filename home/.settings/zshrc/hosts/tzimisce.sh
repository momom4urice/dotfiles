# Basic directories
config[settings_directory]=$HOME/.settings
config[applications_directory]=$HOME/Applications
config[source_directory]=$HOME/Documents/src

# Miniconda
config[miniconda]=$HOME/miniforge3

# Go
config[go]=$HOME/go

# linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# WSL: X Server configuration
# From Ubuntu wiki: https://doc.ubuntu-fr.org/wsl#parametrage_du_serveur_x_de_vcxsrv
export DISPLAY=$(grep -oP "(?<=nameserver ).+" /etc/resolv.conf):0
export LIBGL_ALWAYS_INDIRECT=1
# Fix blurry fonts: https://superuser.com/questions/1370361/blurry-fonts-on-using-windows-default-scaling-with-wsl-gui-applications-hidpi
# export GDK_SCALE=0.5
export GDK_DPI_SCALE=0.95
