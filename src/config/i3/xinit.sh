#!/bin/sh

# key repeat 50/sec after 200ms delay
xset r rate 150 60

# trackpad
xinput set-prop 11 371 1 # enable tapping
xinput set-prop 11 344 1 # enable natural scrolling
xinput set-prop 11 353 1.0 # max pointer speed

