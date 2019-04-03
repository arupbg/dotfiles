#!/bin/bash
# Set maildirs
maildirs="$HOME/Mail/work/INBOX/new/"

find $maildirs -type f | wc -l | tr -d " \t\n\r"
