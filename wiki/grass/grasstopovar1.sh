
# get information of the files in the GMTED repository 

gdalinfo  /vsizip/vsicurl/http://edcintl.cr.usgs.gov/downloads/sciweb1/shared/topo/downloads/GMTED/Grid_ZipFiles/md75_grd.zip

# create a VRT which the extent of the study region
gdalbuildvrt -overwrite   -te  5.83333333333333  44.833333333333333333333333  10.83333333333333333333333   48.166666666666666 elevation.vrt  /vsizip/vsicurl/http://edcintl.cr.usgs.gov/downloads/sciweb1/shared/topo/downloads/GMTED/Grid_ZipFiles/md75_grd.zip/md75_grd/w00*x.adf

gdal_translate -co COMPRESS=DEFLATE -co ZLEVEL=9   elevation.vrt  elevation.tif
rm elevation.tif

echo calculate  slope 
gdaldem slope  -s 111120 -co COMPRESS=DEFLATE -co ZLEVEL=9  elevation.tif    slope.tif 


echo calculate  apect
gdaldem aspect  -zero_for_flat -co COMPRESS=DEFLATE -co ZLEVEL=9 elevation.tif   aspect.tif 

echo calculate  cosine and sine of aspect

gdal_calc.py  --NoDataValue=-9999 --co=COMPRESS=DEFLATE --co=ZLEVEL=9 --overwrite --type=Float32  -A aspect.tif  --calc="(sin(A.astype(float)  * 3.141592 / 180 ))" --outfile  aspect-sine.tif 
gdal_calc.py  --NoDataValue=-9999 --co=COMPRESS=DEFLATE --co=ZLEVEL=9 --overwrite --type=Float32  -A aspect.tif  --calc="(cos(A.astype(float)* 3.141592 / 180 ))" --outfile  aspect-cosine.tif 


echo Eastness  Northness 

gdal_calc.py --NoDataValue=-9999 --co=COMPRESS=DEFLATE --co=ZLEVEL=9 --overwrite --type=Float32   -A slope.tif -B  aspect-sine.tif   --calc="((sin(A.astype(float) * 3.141592 / 180 ))*B)" --outfile   eastness.tif 
gdal_calc.py --NoDataValue=-9999 --co=COMPRESS=DEFLATE --co=ZLEVEL=9 --overwrite --type=Float32   -A slope.tif -B aspect-cosine.tif  --calc="((sin(A.astype(float) * 3.141592 / 180 ))*B)" --outfile   northness.tif


echo  calculate  Terrain Ruggedness Index TRI  
gdaldem TRI -co COMPRESS=DEFLATE -co ZLEVEL=9   elevation.tif   tri.tif 

echo  calculate  Topographic Position Index TPI
gdaldem TPI  -co COMPRESS=DEFLATE -co ZLEVEL=9  elevation.tif   tpi.tif 

echo  calculate  Roughness   
gdaldem  roughness   -co COMPRESS=DEFLATE -co ZLEVEL=9 elevation.tif  roughness.tif 



# start grass 



rm -rf $OUTDIR/vrm/tiles/loc_$filename
source /lustre/home/client/fas/sbsc/ga254/scripts/general/create_location.sh $OUTDIR/vrm/tiles  loc_$filename $INDIR/$filename.tif  
~/.grass7/addons/bin/r.vector.ruggedness.py      elevation=$filename   output=${filename}_vrm  
r.out.gdal -c  createopt="COMPRESS=LZW,ZLEVEL=9" format=GTiff type=Float64  input=${filename}_vrm  output=$OUTDIR/vrm/tiles/${filename}_"gr.tif" --o

rm -rf $OUTDIR/vrm/tiles/loc_$filename
