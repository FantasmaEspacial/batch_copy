#!/bin/bash

#Shitty Instaler :(
if [ ! -d /usr/share/kde4/services/batch_copy ]; then
	mkdir /usr/share/kde4/services/batch_copy/
fi
if [[ "$?" == 0 ]]; then
	cp batch*.sh /usr/share/kde4/services/batch_copy/
	chmod +x /usr/share/kde4/services/batch_copy/*
	cp batch_copy.desktop /usr/share/kde4/services/ServiceMenus/
	chmod +r /usr/share/kde4/services/ServiceMenus/batch_copy.desktop
else
	echo "Got sudo? Got kde4?"
fi