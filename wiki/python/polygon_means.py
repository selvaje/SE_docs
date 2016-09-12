#!/us/bin/env python
#
# Rasterize shape file using gdal_rasterize:
#
# $ gdal_rasterize -te 2632000.000 1420000.000 5972000.000 5450000.000 \
#    -tap -clump -tr 1000 1000 -l poly_fr poly_fr.shp poly_fr.tif
#
import os, sys
from osgeo import gdal
from osgeo.gdalconst import *
import numpy as np
import numpy.ma as ma

driver = gdal.GetDriverByName('GTiff')
driver.Register()

rasterized = os.path.join(os.environ.get('DATADIR', '.'), 'poly_fr.tif')
polyds = gdal.Open(rasterized, GA_ReadOnly)
if polyds is None:
    print 'Error opening', rasterized
    sys.exit(1)

raster = os.path.join(os.environ.get('DATADIR', '.'),
                      '2020_TSSP_IP-ENS-A2-SP20_43023435.tif')
ds = gdal.Open(raster, GA_ReadOnly)
if ds is None:
    print 'Error opening', raster
    sys.exit(1)

# Get raster data
band = ds.GetRasterBand(1)
rasterD = band.ReadAsArray(0, 0, band.XSize, band.YSize)

# Get shape data
band = polyds.GetRasterBand(1)
shapes = band.ReadAsArray(0, 0, band.XSize, band.YSize)

print "total value count:", band.XSize * band.YSize
print "ignored value count:", (shapes == 0.0).sum()

# Iterate over the different polygons
for d in np.unique(shapes):
    print 'Polygon:', d
    # if d == 0.0: continue
    mask = shapes != d
    mx = ma.masked_array(rasterD, mask=mask)
    print (shapes == d).sum()
    print mx.count()
    print mx.mean()
