#!/bin/bash

#-------------------------------------------------------------#
# Batch Copy                                                  #
# This is part of a KDE Service Menu for batch copying files. #
#                                                             #
# Author: Julian Cañada                                       #
# Mail: julian.inc@gmail.com                                  #
# Copyright (C) 2015  Julian Cañada                           #
#-------------------------------------------------------------#

if [[ -f /tmp/batch_copy.tmp ]]; then
	destination=$(kdialog --getexistingdirectory :label1)
	if [[ $? -eq 0 ]]; then
		#This way I can create another queue while the first is copying
		mapfile -t archivos < /tmp/batch_copy.tmp
		rm /tmp/batch_copy.tmp
		
		IFS=$'\n';
		for archivo in ${archivos[*]} ; do
			kde-cp $archivo $destination
		done
		kdialog --title "Batch Copy" --passivepopup "Copying finished!" 3
	fi
else
	kdialog --title "No Files on queue" --sorry "No files to copy.\nPlease select at least one"
fi