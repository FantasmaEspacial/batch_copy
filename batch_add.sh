#!/bin/bash

#-------------------------------------------------------------#
# Batch Copy                                                  #
# This is part of a KDE Service Menu for batch copying files. #
#                                                             #
# Author: Julian Cañada                                       #
# Mail: julian.inc@gmail.com                                  #
# Copyright (C) 2015  Julian Cañada                           #
#-------------------------------------------------------------#

IFS=$'\n';
for archivo in $*; do
	existe=$(grep $archivo /tmp/batch_copy.tmp)
	if  [ "$existe" == "" ]; then
		echo "$archivo" >> /tmp/batch_copy.tmp
	fi
done