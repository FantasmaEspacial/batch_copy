#!/bin/bash

mkdir -p /usr/share/batch_copy/
cp batch*.sh /usr/share/batch_copy/

if [ ! -d ~/.kde/share/kde4/services/ServiceMenus ]; then
	mkdir -p ~/.kde/share/kde4/services/ServiceMenus
fi

cp batch_copy.desktop ~/.kde/share/kde4/services/ServiceMenus