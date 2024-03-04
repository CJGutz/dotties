#!/bin/sh
dconf dump / | sed -n '/keybi\|extensions.pop-shell\|media-keys/,/^$/p' > gnome-stored-settings.conf

