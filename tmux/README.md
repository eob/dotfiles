

Prefix Key:      ctrl-b

And then...

List Windows     w


Must update .ssh/config to hold:

Host *
PermitLocalCommand yes
LocalCommand if [[ $TERM == screen* ]]; then printf "\033k%h\033\\"; fi
