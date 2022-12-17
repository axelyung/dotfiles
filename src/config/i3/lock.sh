#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'

nord0="#2E3440"
nord1="#3B4252"
nord3="#4C566A"
nord4="#D8DEE9"
nord5="#E5E9F0"
nord6="#ECEFF4"
nord7="#8FBCBB"
nord8="#88C0D0"
nord9="#81A1C1"
nord11="#BF616A"
nord13="#EBCB8B"
nord14="#A3BE8C"
nord15="#B48EAD"

i3lock \
	--insidever-color=$CLEAR     \
	--ringver-color=$nord14   \
	--insidewrong-color=$CLEAR   \
	--ringwrong-color=$nord11     \
	--inside-color=$BLANK        \
	--ring-color=$nord4        \
	--line-color=$BLANK          \
	--separator-color=$nord4   \
	--verif-color=$nord4          \
	--wrong-color=$nord11          \
	--time-color=$nord4           \
	--date-color=$nord4           \
	--layout-color=$nord4         \
	--keyhl-color=$nord14        \
	--bshl-color=$nord11         \
	--screen 1                   \
	--blur 5                     \
	--clock                      \
	--indicator                  \
	--time-str="%H:%M:%S"        \
	--date-str="%A, %Y-%m-%d" 
