#!/bin/bash

#-------------------------------------------------------------#
# Batch Copy                                                  #
# This is part of a KDE Service Menu for batch copying files. #
#                                                             #
# Author: Julian Cañada                                       #
# Mail: julian.inc@gmail.com                                  #
# Copyright (C) 2015  Julian Cañada                           #
#-------------------------------------------------------------#

#Shitty Installer :(
cat << _LICENSE_
**********************************************************************************                                                 
* BATCH COPY                                                                     *
* This is a KDE Service Menu for batch copying files.                            *
* Copyright (C) 2015  Julian Cañada                                              *
*                                                                                *
* This program is free software; you can redistribute it and/or                  *
* modify it under the terms of the GNU General Public License                    *
* as published by the Free Software Foundation; either version 2                 *
* of the License, or (at your option) any later version.                         *
*                                                                                *
* This program is distributed in the hope that it will be useful,                *
* but WITHOUT ANY WARRANTY; without even the implied warranty of                 *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                  *
* GNU General Public License for more details.                                   *
*                                                                                *
* You should have received a copy of the GNU General Public License              *
* along with this program; if not, write to the Free Software                    *
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.*
**********************************************************************************
_LICENSE_

if [ "$(whoami)" == "root" ]; then
	echo "Installing..."
	if [ ! -d /usr/share/kde4/services/batch_copy ]; then
		mkdir /usr/share/kde4/services/batch_copy/
	fi
	cp batch*.sh /usr/share/kde4/services/batch_copy/
	chmod 755 /usr/share/kde4/services/batch_copy/*
	cp batch_copy.desktop /usr/share/kde4/services/ServiceMenus/
	chmod 755 /usr/share/kde4/services/ServiceMenus/batch_copy.desktop
else
		echo "Error: Got root?"
		exit 1;
fi

echo "Done!"