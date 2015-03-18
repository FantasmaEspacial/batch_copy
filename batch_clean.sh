#!/bin/bash

if [[ -f /tmp/batch_copy.tmp ]]; then
	rm /tmp/batch_copy.tmp
else
	kdialog --sorry "No files on batch queue"
fi