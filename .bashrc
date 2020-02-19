if [ "$(uname)" "==" "Darwin" ]; then
  alias ls="ls -al"
else
  alias ls="ls -al --color=always"
fi
export "LESS=-R"

function updateDisplay() {
    eval `tmux show-environment | grep ^DISPLAY`
    export $1
}

alias "grep=grep --color -i"
