#!/usr/bin/env python
#
# Print all lines from file argv[2] that match regex argv[1]
#
import sys, re
for s in open(sys.argv[2], 'rt'):
    if re.search(sys.argv[1], s):
        sys.stdout.write(s)
