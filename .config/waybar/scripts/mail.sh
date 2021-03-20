#!/bin/sh
# personalmail and workmail are defined in /etc/hosts with credentials in ~/.netrc
PERSONAL="$(curl -sfnX "STATUS INBOX (UNSEEN)" imap://127.0.0.1:1143/INBOX | tr -dc "[:digit:]")"
is_int () {
    [ "$1" -ge 0 ] 2> /dev/null
}
if is_int "$PERSONAL"; then
    COUNT="$(echo "$PERSONAL" | bc)"
    if [ "$COUNT" -eq 0 ]; then
	    echo " (0)" 
    else
	    echo " ($COUNT)"
    fi
else
	echo " (?)"
fi
