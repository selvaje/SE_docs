#!/usr/bin/env python
#
# Example use of the re.sub function
#
import re
print re.sub('a+', '++\\g<0>++', 'a test aaaa of aaaaaa')
