#!/bin/bash

CURRENT_BRIGHTNESS=$(light -s sysfs/backlight/intel_backlight -G)

# decrease brightness by 5% but don't go below 5%
# -s path can be obtain from light -L
if [[ 1 -eq $(echo "${CURRENT_BRIGHTNESS} > 2.00" | bc) ]]
then
	light -s sysfs/backlight/intel_backlight -U 3
	echo "$(~/mybin/show-brightness.sh)"
fi
