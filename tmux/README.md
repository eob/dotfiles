Outside a Session
=================
List       tmux list-sessions
New        tmux new -s session_name
Attach     tmux attach -t session_name

Within a Session
================
Switch     tmux switch -t session_name
Detach     tmux detach
           ^b d

Windows
=======
List       ^b w
New        tmux new-window
           ^b c
Select     tmux select-window -t :0-9
           ^b [0-9]
Rename     tmux rename-window
           ^b ,

Panes
=====
V Split    tmux split-window
           ^b "

H Split    tmux split-window -h
           ^b %

Swap       tmux swap-pane -[UDLR]
           ^b { or }

Select     tmux select-pane -[ULDR]
Select     tmux select-pane -t :.+ (selects in numerical order)

Helpful
=======

List Keys  tmux list-keys
List Cmds  tmux list-commands
Info       tmux info
Reload     tmux source-file <tmux conf>

Useful:

http://robots.thoughtbot.com/a-tmux-crash-course

D
=========

Prefix Key:      ctrl-b

And then...

List Windows     w

Must update .ssh/config to hold:

Host *
PermitLocalCommand yes
LocalCommand if [[ $TERM == screen* ]]; then printf "\033k%h\033\\"; fi
