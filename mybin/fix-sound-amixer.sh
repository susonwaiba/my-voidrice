#!/bin/bash

# list all of sound cards
# aplay -l

# devices: Master, Speaker, Headphone

# mute specific device
# amixer -c 0 sset Headphone mute

# unmute specific device
amixer -c 0 sset Headphone unmute -q

# set Headphone volume
amixer -c 0 set Headphone 90% -q

# set Master volume
# amixer -c 0 set Master 90% -q

# set Capture volume
amixer -c 0 set Capture 75% -q

# mute MIC
amixer set Capture nocap -q
