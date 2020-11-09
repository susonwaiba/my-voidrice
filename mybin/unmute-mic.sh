#!/bin/bash

# unmute mic
amixer set Capture cap -q

# notify state
if [[ $(amixer get Capture | grep '\[off\]') ]]
then
	notify-send "MIC switched OFF"
	echo "$(~/mybin/show-mic.sh)"
else
	notify-send "MIC switched ON"
	echo "$(~/mybin/show-mic.sh)"
fi
