#!/bin/bash

CURRENT_BRIGHTNESS=$(light -s sysfs/backlight/intel_backlight -G)

# increase brightness
# -s path can be obtain from light -L
if [[ 1 -eq $(echo "${CURRENT_BRIGHTNESS} < 10.00" | bc) ]]
then
    light -s sysfs/backlight/intel_backlight -A 1
	echo "$(~/mybin/show-brightness.sh)"	
else
    light -s sysfs/backlight/intel_backlight -A 5
    echo "$(~/mybin/show-brightness.sh)"
fi
