#!/bin/bash

killall dunst
dunstify -u low "low urgency notification"
dunstify -u normal "normal urgency notification"
dunstify -u critical "critical urgency notification"
