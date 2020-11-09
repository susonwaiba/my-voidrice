#!/bin/bash

# list all of sound cards
# aplay -l

# devices: Master, Speaker, Headphone

# mute specific device
# amixer -c 0 sset Headphone mute

# unmute specific device
amixer -c 0 sset Headphone unmute
