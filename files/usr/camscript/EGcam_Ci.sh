#!/bin/sh

CAMNAME="Common Interface"

remove_tmp () {
	rm -rf /tmp/*.info /tmp/*.tmp
}

case "$1" in
	start)
	echo "[SCRIPT] $1: $CAMNAME"
	remove_tmp
        /usr/bin/vucamd &
	;;
	stop)
	echo "[SCRIPT] $1: $CAMNAME"
	remove_tmp
        killall -9 vucamd 2>/dev/null
	;;
	*)
	$0 stop
	exit 0
	;;
esac

exit 0








