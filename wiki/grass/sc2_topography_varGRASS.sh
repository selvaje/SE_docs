


# Read data into GRASS 

r.in.gdal input=elevation.tif    output=elevation

g.extension  extension=r.vector.ruggedness

echo calculate  Vector Ruggedness Measure
r.vector.ruggedness      elevation=elevation   output=vrm   --o 

# export the results 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=vrm output=vrm.tif 

echo calculate curvature variables 
r.slope.aspect elevation=elevation  precision=FCELL  pcurv=pcurv tcurv=tcurv dx=dx  dy=dy  dxx=dxx dyy=dyy  --o

# export the results 

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=pcurv output=pcurv.tif 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=tcurv output=tcurv.tif 

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dx output=dx.tif 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dxx output=dxx.tif 

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dy output=dy.tif 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dyy output=dyy.tif 

echo calculate geomorphological landforms 
 
g.extension  extension=r.geomorphon
r.geomorphon   elevation=elevation  forms=geomorphon  search=3 skip=0 flat=1 dist=0 step=0 start=0 --overwrite

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Byte input=geomorphon output=geomorphon.tif 
