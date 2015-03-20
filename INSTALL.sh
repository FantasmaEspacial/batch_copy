#!/bin/bash

#Shitty Installer :(
if [ ! -d /usr/share/kde4/services/batch_copy ]; then
	mkdir /usr/share/kde4/services/batch_copy/
fi
if [[ "$?" == 0 ]]; then
	cp batch*.sh /usr/share/kde4/services/batch_copy/
	chmod 755 /usr/share/kde4/services/batch_copy/*
	cp batch_copy.desktop /usr/share/kde4/services/ServiceMenus/
	chmod 755 /usr/share/kde4/services/ServiceMenus/batch_copy.desktop
else
	echo "Got sudo? Got kde4?"
fi