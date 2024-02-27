#!/usr/bin/bash

markdown_py $1 > temp_markdown_html && firefox temp_markdown_html && sleep 1 && rm temp_markdown_html
