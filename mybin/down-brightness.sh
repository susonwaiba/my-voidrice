#!/bin/bash

CURRENT_BRIGHTNESS=$(light -s sysfs/backlight/intel_backlight -G)

# decrease brightness but don't go below 1%
# -s path can be obtain from light -L
if [[ 1 -eq $(echo "${CURRENT_BRIGHTNESS} > 10.00" | bc) ]]
then
	light -s sysfs/backlight/intel_backlight -U 5
	echo "$(~/mybin/show-brightness.sh)"
elif [[ 1 -eq $(echo "${CURRENT_BRIGHTNESS} > 1.00" | bc) ]]
then
	light -s sysfs/backlight/intel_backlight -U 1
	echo "$(~/mybin/show-brightness.sh)"	
fi
