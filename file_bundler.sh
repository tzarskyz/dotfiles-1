#!/usr/bin/env dash

copy='cp -r'
verbose=$1
temporary=/tmp/move-$(date '+%Y%m%d%H%M%S')

mkdir $temporary

$copy $verbose "$HOME/.abook" "$temporary/abook"
$copy $verbose "$HOME/.antiword" "$temporary/antiword"
$copy $verbose "$HOME/.getmail" "$temporary/getmail"
$copy $verbose "$HOME/.gitconfig" "$temporary/gitconfig"
$copy $verbose "$HOME/.git_template" "$temporary/git_template"
$copy $verbose "$HOME/.gnupg" "$temporary/gnupg"
$copy $verbose "$HOME/.irclogs" "$temporary/irclogs"
$copy $verbose "$HOME/.irssi" "$temporary/irssi"
$copy $verbose "$HOME/.lua_config.lua" "$temporary/lua_config.lua"
$copy $verbose "$HOME/.mailcap" "$temporary/mailcap"
$copy $verbose "$HOME/.maildir" "$temporary/maildir"
$copy $verbose "$HOME/.mpd" "$temporary/mpd"
$copy $verbose "$HOME/.mpdconf" "$temporary/mpdconf"
$copy $verbose "$HOME/.msmtprc" "$temporary/msmtprc"
$copy $verbose "$HOME/.mutt" "$temporary/mutt"
$copy $verbose "$HOME/.netrc" "$temporary/netrc"
$copy $verbose "$HOME/.passes_list" "$temporary/passes_list"
$copy $verbose "$HOME/.procmaillog" "$temporary/procmaillog"
$copy $verbose "$HOME/.pwsafe.dat" "$temporary/pwsafe.dat"
$copy $verbose "$HOME/.rnd" "$temporary/rnd"
$copy $verbose "$HOME/Documents/Solarized Dark.terminal" \
    "$temporary/Solarized Dark.terminal"
$copy $verbose "$HOME/Documents/IR_Black_Mine.terminal" \
    "$temporary/IR_Black_Mine.terminal"
$copy $verbose "$HOME/Library/LaunchAgents/com.achilles.clean.plist" \
    "$temporary/com.achilles.clean.plist"
$copy $verbose "$HOME/Library/LaunchAgents/com.achilles.mailcheck.plist" \
    "$temporary/com.achilles.mailcheck.plist"

tar $verbose zcf "$HOME/move.tar.gz" -C "$temporary" .
rm -rf "$temporary"
