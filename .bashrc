alias ls="ls -al --color=always"
export "LESS=-R"

function updateDisplay() {
    eval `tmux show-environment | grep ^DISPLAY`
    export $1
}

export "GREP_OPTIONS=--color -i"
