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
	rm /tmp/batch_copy.tmp
else
	kdialog --title "No files on queue" --sorry "No files on batch queue"
fi