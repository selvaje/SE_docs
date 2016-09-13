r.in.gdal input=elevation.tif    output=elevation
g.extension  extension=r.vector.ruggedness 
r.vector.ruggedness      elevation=elevation   output=vrm   --o
ll
ls
emacs sc2_topography_varGRASS.sh  & 
r.out.gdal -c  createopt="COMPRESS=DEFLATE,ZLEVEL=9" format=GTiff  type=Float32 input=vrm output=vrm.tif 
exit
