# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# golang goodness
export PATH=$PATH:/usr/local/go/bin

# rustyyyyyy, rusty wallace
. "$HOME/.cargo/env"
