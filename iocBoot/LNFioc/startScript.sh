#!/bin/bash

case "$1" in
    start)
        /etc/init.d/ethercat start
        echo "ethercat started"
        sleep 2
        cd /epics/ethercat-4-3/iocs/LNFIOC/iocBoot/LNFioc
        tmux new-session -d -s LNF
        tmux split-window -v -p 50 -t LNF
        tmux select-pane -t 0
        tmux send-keys "./start_scanner" C-m
        echo "scaner started"
        sleep 2
        tmux select-pane -t 1
        tmux send-keys "./st.cmd" C-m
        echo "IOC started"
        ;;
    stop)
        tmux kill-session -t LNF
        echo "Scanner and ioc stopped"
        ;;
    *)
        echo "Usage: ./startScript.sh {start|stop}"
        exit 1
        ;;
esac

exit 0