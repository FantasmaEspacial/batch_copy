#!/bin/bash

if [[ -f /tmp/batch_copy.tmp ]]; then
	destination=$(kdialog --getexistingdirectory :label1)
	if [[ $? -eq 0 ]]; then
		#The progress bar it is ALMOST FAKE
		dbusRef=`kdialog --title "Almost fake progress bar" --progressbar "Coping..." $(wc -l /tmp/batch_copy.tmp|awk '{print $1}')`
		qdbus $dbusRef showCancelButton true
		
		#This way I can create another queue while the first is coping
		mapfile -t archivos < /tmp/batch_copy.tmp;
		rm /tmp/batch_copy.tmp
		for (( i=0; i < ${#archivos[@]}; i++ )) ; do
			echo $(qdbus $dbusRef wasCancelled)
			if [ $(qdbus $dbusRef wasCancelled) == "true"  ]; then
				break;
			fi
			qdbus $dbusRef setLabelText "Coping: ${archivos[i]}"
			cp -r "${archivos[i]}" $destination
			inc=$((`qdbus $dbusRef Get "" "value"` + 1))
			qdbus $dbusRef Set "" "value" $inc;
		done

		qdbus $dbusRef close
	fi
else
	kdialog --title "No Files on queue" --sorry "No files to copy.\nPlease select at least one"
fi