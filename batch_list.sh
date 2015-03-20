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
	max=$(wc -L /tmp/batch_copy.tmp|awk '{print $1}')
	cant=$(wc -l /tmp/batch_copy.tmp|awk '{print $1}')

	kdialog --textbox /tmp/batch_copy.tmp 550 300  
else
	kdialog --title "No files" --sorry "No files on batch queue"
fi
