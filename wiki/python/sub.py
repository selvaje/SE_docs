#!/usr/bin/env python
import re
print re.sub('a+', '++\\g<0>++', 'a test aaaa of aaaaaa')
