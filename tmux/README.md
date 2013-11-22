Outside a Session
=================
List       tmux list-sessions
New        tmux new -s session_name
Attach     tmux attach -t session_name

Within a Session
================
Switch     tmux switch -t session_name
Detach     tmux detach

Shortcuts
=========

Prefix Key:      ctrl-b

And then...

List Windows     w

Must update .ssh/config to hold:

Host *
PermitLocalCommand yes
LocalCommand if [[ $TERM == screen* ]]; then printf "\033k%h\033\\"; fi
