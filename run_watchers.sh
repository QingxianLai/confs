#!/bin/bash

ssh-add
hologram use data
gironde sign -ca infra
gironde sign -ca engineering
gironde sign -ca data
tmux new-session -s watchers -c '~/' \; \
            new-window -n pinboard 'watcher pinboard' \; \
            new-window -n optimus 'watcher optimus' \; \
            new-window -n magnus  'watcher magnus' \; \
            new-window -n pintel 'watcher pintel' \; \
            new-window -n anap 'watcher analyticsapp' \; \
            new-window -n jup 'watcher jup' \; \
            new-window -n statsboard "watcher statsboard" \; \
            detach-client
