#!/usr/bin/env bash

main() {

  ## Colors
  black='colour16'
  white='colour255'
  gray='colour236'
  dark_gray='colour235'
  light_purple='colour141'
  dark_purple='colour61'
  cyan='colour117'
  pink='colour212'
  orange='colour215'
  green='colour84'
  red='colour203'

  ## Icons
  left_sep=''
  right_sep=''
  right_alt_sep=''

  tmux set-option -g status on
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-style bg="${dark_gray}"
  tmux set-option -g pane-active-border-style fg="${green}"
  tmux set-option -g pane-border-style fg="${light_purple} bold"
  tmux set-option -g message-style bg="${dark_purple}",fg="${white} bold"
  tmux set-option -g message-command-style bg="${dark_purple}",fg="${white} bold"
  tmux set-option -g mode-style bg="${dark_purple}",fg="${white} bold"
  tmux set-option -g status-left " #[bold]#I #[fg=${dark_gray},reverse,nobold]${right_sep}"
  tmux set-option -g status-left-style fg=${white},bg=${dark_purple}
  tmux set-option -g status-right "#[fg=${green},bg=${dark_gray}]${left_sep}#[bg=${black},reverse] #S #[bg=${dark_gray},reverse]${left_sep}#[fg=${dark_gray},bg=${light_purple}]${left_sep}#[fg=${light_purple},bg=${black}] #(hostname -s) #[bg=${dark_gray},fg=${light_purple}]${left_sep}#[bg=${dark_purple},fg=${dark_gray}]${left_sep}#[bg=${white},bold,fg=${dark_purple}] %Y-%m-%d %H:%M "
  tmux set-option -g status-right-style fg=${light_purple},bg=${dark_gray}
  tmux set-window-option -g window-status-activity-style fg=${white},bg=${gray}
  tmux set-window-option -g window-status-separator ""
  tmux set-window-option -g window-status-format ' #I #W '
  tmux set-window-option -g window-status-style fg=${white},bg=${dark_gray}
  tmux set-window-option -g window-status-last-style fg=${green},bg=${dark_gray}
  tmux set-window-option -g window-status-current-format \
    "#[fg=${dark_gray},bg=${cyan}]${right_sep}#[fg=${black}] #I ${right_alt_sep} #W#F #[fg=${cyan},bg=${dark_gray}]${right_sep}"
  tmux set-window-option -g window-status-current-style fg=${dark_gray},bg=${light_purple}
}

main

# vim: set filetype=bash
