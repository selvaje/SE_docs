


# Read data into GRASS 

r.in.gdal input=$DIR/elevation.tif    output=elevation

g.extension  extension=r.vector.ruggedness

echo calculate  Vector Ruggedness Measure
r.vector.ruggedness      elevation=elevation   output=vrm   --o 

echo calculate curvature variables 
r.slope.aspect elevation=elevation  precision=FCELL  pcurv=pcurv tcurv=tcurv dx=dx  dy=dy  dxx=dxx dyy=dyy  --o

# export the results 

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=pcurv output=$DIR/pcurv.tif 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=tcurv output=$DIR/tcurv.tif 

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dx output=$DIR/dx.tif 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dxx output=$DIR/dxx.tif 

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dy output=$DIR/dy.tif 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=dyy output=$DIR/dyy.tif 

echo calculate geomorphological landforms 
 
g.extension  extension=r.geomorphon
r.geomorphon   dem=elevation  forms=geomorphon  search=3 skip=0 flat=1 dist=0 step=0 start=0 --overwrite

r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Byte input=geomorphon output=$DIR/geomorphon.tif 
