#!/bin/bash

if [[ -f /tmp/batch_copy.tmp ]]; then
	destination=$(kdialog --getexistingdirectory :label1)
	if [[ $? -eq 0 ]]; then
		
		#The progress bar it is ALMOST FAKE
		dbusRef=`kdialog --progressbar "Coping..." $(wc -l /tmp/batch_copy.tmp|awk '{print $1}')`
		qdbus $dbusRef showCancelButton true
		IFS=$'\n';
		for archivo in $(< /tmp/batch_copy.tmp); do
			echo $(qdbus $dbusRef wasCancelled)
			if [ $(qdbus $dbusRef wasCancelled) == "true"  ]; then
				break;
			fi
			qdbus $dbusRef setLabelText "Coping: $archivo"
			cp -r $archivo $destination
			inc=$((`qdbus $dbusRef Get "" "value"` + 1))
			qdbus $dbusRef Set "" "value" $inc;
		done

		qdbus $dbusRef close
		#rm /tmp/batch_copy.tmp
	fi
else
	kdialog --sorry "No files to copy.\nPlease select at least one"
fi