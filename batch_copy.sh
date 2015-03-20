#!/bin/bash

if [[ -f /tmp/batch_copy.tmp ]]; then
	destination=$(kdialog --getexistingdirectory :label1)
	if [[ $? -eq 0 ]]; then
		#This way I can create another queue while the first is coping
		mapfile -t archivos < /tmp/batch_copy.tmp;
		rm /tmp/batch_copy.tmp
		for (( i=0; i < ${#archivos[@]}; i++ )) ; do
			kde-cp ${archivos[i]} $destination
		done
	fi
else
	kdialog --title "No Files on queue" --sorry "No files to copy.\nPlease select at least one"
fi