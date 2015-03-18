#!/bin/bash

if [[ -f /tmp/batch_copy.tmp ]]; then
	max=$(wc -L /tmp/batch_copy.tmp|awk '{print $1}')
	cant=$(wc -l /tmp/batch_copy.tmp|awk '{print $1}')

	kdialog --textbox /tmp/batch_copy.tmp 550 300  
else
	kdialog --title "No files" --sorry "No files on batch queue"
fi
