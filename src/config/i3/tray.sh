#!/bin/bash

pkill -f volumeicon
volumeicon &

pkill -f blueman-applet
blueman-applet &

pkill -f nm-applet
nm-applet &
