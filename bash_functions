# Use ack to search my history file; pipe to less if necessary
hack()
{
    var=$(history | ack $1 | wc -l)
    if (( $var > 22 ))
    then
        history | ack $1 | less
    else
        history | ack $1
    fi
}

# Use ack to search output of ps ax; pipe to less if necessary
pack()
{
    var=$(ps ax | ack $1 | wc -l)
    if (( $var > 22 ))
    then
        ps ax | ack $1 | less
    else
        ps ax | ack $1
    fi
}

# Get svn revision #
#parse_svn_revision() {
#    local REV=$(svnversion 2>/dev/null)
#    [ $? -eq 0 ] || return
#    [ "$REV" == 'exported' ] && return
#    echo " ($REV)"
#}

# Get a password and copy it to the clipboard with pbcopy and pwsafe
# FIX ME: This barfs up if the item is a nil value
pw() {
    pwsafe -p $1 | ruby -e 'print gets.chomp' | pbcopy
}

# Get Mercurial information in my PS1; see
# http://sjl.bitbucket.org/hg-prompt/quickstart/
#hg_ps1() {
#    hg prompt " [{hg: {branch}}{ {status}}{update}]" 2> /dev/null
#}
