#!/bin/bash

# show current brightness - file way
# cat /sys/class/backlight/intel_backlight/brightness

# as xbacklight doesnot works install light
# sudo pacman -S light

# get current brightness
# -s path can be obtain from light -L
light -s sysfs/backlight/intel_backlight -G
