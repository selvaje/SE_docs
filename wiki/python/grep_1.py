#!/usr/bin/env python
#
# Print all lines from stdin that contain string "argv"
#
import sys, re
for s in sys.stdin:
    if re.search('argv', s):
        sys.stdout.write(s)
