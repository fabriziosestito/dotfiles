starship init fish | source

function fish_greeting
    pfetch
end

function "mix dyalizer"
    mix dialyzer
end

function ks
    kubectl exec --stdin --tty $argv -- bash
end

set -U fish_color_autosuggestion      brblack
set -U fish_color_cancel              -r
set -U fish_color_command             brgreen
set -U fish_color_comment             brmagenta
set -U fish_color_cwd                 green
set -U fish_color_cwd_root            red
set -U fish_color_end                 brmagenta
set -U fish_color_error               brred
set -U fish_color_escape              brcyan
set -U fish_color_history_current     --bold
set -U fish_color_host                normal
set -U fish_color_match               --background=brblue
set -U fish_color_normal              normal
set -U fish_color_operator            cyan
set -U fish_color_param               blue
set -U fish_color_quote               yellow
set -U fish_color_redirection         bryellow
set -U fish_color_search_match        'bryellow' '--background=brblack'
set -U fish_color_selection           'white' '--bold' '--background=brblack'
set -U fish_color_status              red
set -U fish_color_user                brgreen
set -U fish_color_valid_path          --underline
set -U fish_pager_color_completion    normal
set -U fish_pager_color_description   yellow
set -U fish_pager_color_prefix        'white' '--bold' '--underline'
set -U fish_pager_color_progress      'brwhite' '--background=cyan'

alias chiekout="git checkout"
alias c="code-insiders"
alias g "clear; fish_greeting"
alias mm="~/.config/scripts/move_mouse"
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias nano="nvim"
alias n="nvim"
alias e="emacsclient"
alias ls='ls -FGh --color=auto --hyperlink=auto'
alias k=kubectl
alias uu='git fetch upstream main && git reset --hard upstream/main && git push origin main --force'
alias reviews='gh search prs --state=open --review-requested=@me'

set -x ERL_AFLAGS "-kernel shell_history enabled"
source ~/.asdf/asdf.fish

set PATH $PATH ~/go/bin
set PATH $PATH ~/.config/scripts
set PATH $PATH ~/.local/bin
set PATH $PATH ~/bin
set PATH $PATH ~/.cargo/bin
set EDITOR nvim
set GIT_EDITOR micro
set KUBE_EDITOR lvim
set -x _JAVA_AWT_WM_NONREPARENTING 1
set HELM_EXPERIMENTAL_OCI 1
set --universal FZF_DEFAULT_COMMAND 'fd'

# Wasmer
export WASMER_DIR="/home/lain/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
