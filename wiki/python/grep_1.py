#!/usr/bin/env python
#
# Print all lines from "example.txt" that contain the string "line"
#
import sys, re
for s in open('example.txt', 'rt'):
    if re.search('line', s):
        sys.stdout.write(s)
