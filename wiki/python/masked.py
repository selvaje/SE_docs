#!/usr/bin/env python
import numpy as np
import numpy.ma as ma

x = np.array([[1, 2, 3], [3, -1, 5]])
print x.mean()

mask = np.array([[0, 0, 0], [0, 1, 0]])
mx = ma.masked_array(x, mask=mask)
print mx.mean()
print mx

y = np.array([1, 2, 3, 3, 5])
print y.mean()

print x[x >= 0].mean()
print x[mask == 0].mean()

####
mx = ma.masked_where(x < 0, x)
print mx.mean()

# Mask a masked array
mmx = ma.masked_where(mx > 2, mx)
print mmx

print mmx.fill_value
