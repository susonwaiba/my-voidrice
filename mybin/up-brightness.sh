#!/bin/bash

# increase brightness by 5%
# -s path can be obtain from light -L
light -s sysfs/backlight/intel_backlight -A 5
echo "$(~/mybin/show-brightness.sh)"
