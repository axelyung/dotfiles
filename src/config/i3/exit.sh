#!/bin/sh
# /usr/bin/i3exit

# with openrc use loginctl
[ "$(cat /proc/1/comm)" = "systemd" ] && logind=systemctl || logind=loginctl

lock=~/.config/i3/lock.sh

case "$1" in
    lock)
        $lock
        ;;
    logout)
        i3-msg exit
        ;;
    switch_user)
        dm-tool switch-to-greeter
        ;;
    suspend)
        $lock && $logind suspend
        ;;
    hibernate)
        $lock && $logind hibernate
        ;;
    reboot)
        $logind reboot
        ;;
    shutdown)
        $logind poweroff
        ;;
    *)
        echo "== ! i3exit: missing or invalid argument ! =="
        echo "Try again with: lock | logout | switch_user | suspend | hibernate | reboot | shutdown"
        exit 2
esac

exit 0
