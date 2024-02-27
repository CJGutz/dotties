#!/usr/bin/bash

whatis $(ls $(echo $PATH | tr ":" "\n")) 2> /dev/null | grep $1

