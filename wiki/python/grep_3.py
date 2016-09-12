#!/usr/bin/env python
#
# Python script that works like a simplified "grep" command
# but without any error handling
#
import sys, re

for fn in sys.argv[2:]:
    fobj = open(fn, 'rt')
    for s in fobj:
        if re.search(sys.argv[1], s):
            sys.stdout.write(s)
    fobj.close()
