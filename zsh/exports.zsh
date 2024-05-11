#
# Export of veriables and PATH
#

# stuff
export EDITOR="/opt/homebrew/bin/nvim"
export VISUAL="/opt/homebrew/bin/nvim"
export TERMINAL="/Applications/kitty.app/Contents/MacOS/kitty"
export BROWSER="/usr/bin/google-chrome-stable"
export LANG="en_GB.UTF-8"

# Go
export GOPATH="$HOME/go"

#### Path
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/var/lib/snapd/snap/bin
export PATH=$PATH:./vendor/bin
# export PATH=$PATH:/Users/breda/kitt-cli-data/local-setup/src/api/vendor/bin

# For PHPenv to work
PATH="$(brew --prefix icu4c)/bin:$(brew --prefix icu4c)/sbin:$(brew --prefix libiconv)/bin:$(brew --prefix curl)/bin:$(brew --prefix libxml2)/bin:$(brew --prefix bzip2)/bin:$(brew --prefix bison)/bin:$PATH"
CONFIGURE_OPTS="--with-zlib-dir=$(brew --prefix zlib) --with-bz2=$(brew --prefix bzip2) --with-curl=$(brew --prefix curl) --with-iconv=$(brew --prefix libiconv) --with-libedit=$(brew --prefix libedit)"

# Printify
export DOCKER_BUILDKIT=1

# After installing shivammathur/php/php@7.4
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@8.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@8.1/include"
