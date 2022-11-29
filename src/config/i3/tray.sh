#!/bin/bash

pkill -f volumeicon
volumeicon &

pkill -f blueman-applet
blueman-applet &

pkill -f clipit
clipit &

pkill -f nm-applet
nm-applet &
