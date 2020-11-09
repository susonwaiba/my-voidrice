#!/bin/bash

# toggle mic mute/unmute
amixer set Capture toggle -q

# notify state
if [[ $(amixer get Capture | grep '\[off\]') ]]
then
	notify-send "MIC switched OFF"
	echo "$(~/mybin/show-mic.sh)"
else
	notify-send "MIC switched ON"
	echo "$(~/mybin/show-mic.sh)"
fi
