#/bin/bash
flatpak run $(flatpak list | sed -e 's/\t/-/g' | cut -d '-' -f2 | dmenu)
