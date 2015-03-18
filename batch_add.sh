#!/bin/bash

IFS=$'\n';
for archivo in $*; do
	existe=$(grep $archivo /tmp/batch_copy.tmp)
	if  [ "$existe" == "" ]; then
		echo "$archivo" >> /tmp/batch_copy.tmp
	fi
done