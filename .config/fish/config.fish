starship init fish | source

function fish_greeting
    ufetch
end

function "mix dyalizer"
    mix dialyzer
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
set -U fish_color_param               brblue
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

alias c "clear; fish_greeting"
alias mm="~/.config/scripts/move_mouse.sh"
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias nano="micro"

set -x ERL_AFLAGS "-kernel shell_history enabled"
source ~/.asdf/asdf.fish

set PATH $PATH ~/go/bin

