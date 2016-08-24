#!/us/bin/env python
import os, sys
from osgeo import gdal
from osgeo.gdalconst import *

driver = gdal.GetDriverByName('GTiff')
driver.Register()

fn = os.path.join(os.environ.get('DATADIR', '.'),
                  '2020_TSSP_IP-ENS-A2-SP20_43023435.tif')
ds = gdal.Open(fn, GA_ReadOnly)
if ds is None:
    print 'Error opening', fn
    sys.exit(1)

cols = ds.RasterXSize
rows = ds.RasterYSize
bands = ds.RasterCount
print cols, rows, bands

geotransform = ds.GetGeoTransform()
print geotransform

for i in range(bands):
    band = ds.GetRasterBand(i + 1)
    d = band.ReadAsArray(0, 0, band.XSize, band.YSize)
    print d.shape, d.dtype
    print d.min(), d.max(), d.mean()
