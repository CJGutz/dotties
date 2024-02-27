#!/usr/bin/bash

[[ $1 = f* || $1 = F* ]] && repo="Frontend"
[[ $1 = b* || $1 = B* ]] && repo="Backend"

open "https://eisolutions.atlassian.net/jira/software/projects/ETT/boards/4"
open "https://github.com/EI-Solutions/$repo"
code ~/eisolutions/$repo
cd ~/eisolutions/Frontend
gnome-terminal --title Backend --working-directory ~/eisolutions/Backend

