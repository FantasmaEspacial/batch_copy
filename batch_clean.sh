#!/bin/bash

if [[ -f /tmp/batch_copy.tmp ]]; then
	rm /tmp/batch_copy.tmp
else
	kdialog --title "No files on queue" --sorry "No files on batch queue"
fi