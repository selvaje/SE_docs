#!/usr/bin/env python
import os, sys
from osgeo import ogr

driver = ogr.GetDriverByName('ESRI Shapefile')
fn = os.path.join(os.environ.get('DATADIR', '.'), 'poly_fr.shp')
dataSource = driver.Open(fn, 0)
if dataSource is None:
  print 'Error opening', fn
  sys.exit(1)

layer = dataSource.GetLayer(0)
numFeatures = layer.GetFeatureCount()
print 'Feature count:', numFeatures

extend = layer.GetExtent()
print 'Extend:', extend

feature = layer.GetNextFeature()
while feature:
    print feature.GetField('id')
    geometry = feature.GetGeometryRef()
    print geometry.Centroid()
    print geometry.ExportToWkt()
    feature.Destroy()
    feature = layer.GetNextFeature()

dataSource.Destroy()
