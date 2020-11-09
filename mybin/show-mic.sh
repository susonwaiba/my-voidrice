#!/bin/bash

if [[ $(amixer get Capture | grep '\[off\]') ]]
then
	echo "MIC switched OFF"
else
	echo "MIC switched ON"
fi
