# Use GDAL/OGR and PKTOOLS for raster/vector operations

## GDAL commands

**Explore the files**

Change directory and list all the files with the extension .tif

    cd \$HOME/ost4sem/exercise/geodata_SDM 
    ls *\*.tif
 
Retrive the characteristic of the one tif file 
    
    gdalinfo vegetation/ETmean08-11.tif

Visualize the image

    openev vegetation/ETmean08-11.tif

Reply to the following questions:\
What is the pixel size?\
How do you get min and max pixel values?\

**Understand data type**

                           Ranges of GDAL data types        Image    \
     GDAL data type           minimum      maximum        Size     \
     Byte                   0          255        39M    \
     UInt16                 0       65,535        78M    \
     Int16, CInt16            -32,768       32,767        78M    \
     UInt32                 0    4,294,967,295        155M      \
     Int32, CInt32     -2,147,483,648    2,147,483,647        155M    \
     Float32, CFloat32      -3.4E38           3.4E38        155M    \
     Float64, CFloat64    -1.79E308         1.79E308        309M    

**Understand NoData Value**

    gdalinfo -mm vegetation/ETmean08-11.tif
    gdal_edit.py -a_nodata -9999 vegetation/ETmean08-11.tif
    gdalinfo -mm vegetation/ETmean08-11.tif
    gdal_edit.py -a_nodata -339999995214436424907732413799364296704.000 vegetation/ETmean08-11.tif

**Calculate minimum and maximum values for all the images**

    for file in vegetation/*.tif ; do
    gdalinfo -mm $file | grep Computed
    done

Exercise:

Use one of the gdal commands and try to clip the
vegetation/ETmean08-11.tif image using a square box (numbers are in
degree):\\\\ xmin : 32\\\\ xmax : 34\\\\ ymin : 1\\\\ ymax : 3\\\\ \\\\

      gdal............................  vegetation/ETmean08-11.tif vegetation/ETmean08-11_crop.tif    

**Create a Coefficient of variation**

GPPmean08-11.tif temporal mean of Gross Primary Productivity\
GPPstdev08-11.tif temporal standard deviation of Gross Primary Productivity\

    gdal_calc.py --type=Float32 --overwrite -A vegetation/GPPstdev08-11.tif -B vegetation/GPPmean08-11.tif --calc="( A.astype(float) / ( B.astype(float) + 0.000000001 ) )" --outfile=vegetation/GPPcv08-11.tif

**Change pixel resolution**

    

1.  looping trough the images

for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif;
do

     filename=$(basename $file .tif )    \
     gdalwarp -overwrite -te 29 -1 35.0000000048 4.000000004 -tr 0.008333333340000 0.008333333340000 -co COMPRESS=DEFLATE -co ZLEVEL=9 $file LST/${filename}_crop.tif     

done     

**Get value at one pixel/line image-location**

    

1.  looping trough the images

for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif;
do

      gdallocationinfo -valonly $file  20 20      

done     

**Get value at lat/long image-location**

    

1.  looping trough the images

for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif;
do

      gdallocationinfo -valonly -geoloc $file  33 2      

done     

**Get value at multiple lat/long image-location**

    

1.  create the lat long file

echo 32.5 2.5 \> LST/x_y.txt echo 31.1 2.1 \>\> LST/x_y.txt

1.  looping trough the images

for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif;
do

      gdallocationinfo -valonly -geoloc $file < LST/x_y.txt      \
      echo ""    

done 

**From Image to text and from txt to image**

    gdal_translate -of XYZ vegetation/ETmean08-11_crop.tif vegetation/ETmean08-11_crop.txt    
    awk '{if ($3>2 && $3<4) {print $1,$2,50 } else {print}}' vegetation/ETmean08-11_crop.txt > vegetation/ETmean08-11_crop_trh.txt    
    gdal_translate -ot Byte vegetation/ETmean08-11_crop_trh.txt vegetation/ETmean08-11_crop_trh.tif    

**The use of VRT to stack images and tiling**

    

1.  stack the tif

gdalbuildvrt -overwrite -separate vegetation/stack.vrt
vegetation/ETmean08-11.tif vegetation/ETstdev08-11.tif gdalinfo
vegetation/stack.vrt

1.  split in tiles

gdal_translate -srcwin 0 0 360 300 vegetation/stack.vrt
vegetation/stack_UL.tif gdal_translate -srcwin 0 300 360 300
vegetation/stack.vrt vegetation/stack_UR.tif gdal_translate -srcwin
360 0 360 300 vegetation/stack.vrt vegetation/stack_LL.tif
gdal_translate -srcwin 360 300 360 300 vegetation/stack.vrt
vegetation/stack_LR.tif

1.  recompose the image

gdalbuildvrt -overwrite vegetation/ETmosaic.vrt vegetation/stack_UL.tif
vegetation/stack_UR.tif vegetation/stack_LL.tif
vegetation/stack_LR.tif gdal_translate -co COMPRESS=DEFLATE -co
ZLEVEL=9 vegetation/ETmosaic.vrt vegetation/ETmosaic.tif

**Create shp border tiles**

    rm -f vegetation/tiles.*
    gdaltindex vegetation/tiles.shp vegetation/stack_??.tif

**Surface distance/buffer**

Continues distance surface

    gdal_proximity.py -co COMPRESS=DEFLATE -co ZLEVEL=9 -values 0 -distunits PIXEL -ot UInt32 vegetation/ETmean08-11_crop_trh.tif vegetation/ETmean08-11_crop_proximity.tif

Fix buffer surface

    gdal_proximity.py -fixed-buf-val 4 -maxdist 4 -nodata 10 -co COMPRESS=DEFLATE -co ZLEVEL=9 -values 0 -distunits PIXEL -ot Byte vegetation/ETmean08-11_crop_trh.tif vegetation/ETmean08-11_crop_buffer.tif

**Topography variables**

    

1.  calculate slope

gdaldem slope -s 111120 -co COMPRESS=DEFLATE -co ZLEVEL=9
dem/GMTED2010.tif dem/slope.tif

1.  calculate apect

gdaldem aspect -zero_for_flat -co COMPRESS=DEFLATE -co ZLEVEL=9
dem/GMTED2010.tif dem/aspect.tif

1.  calculate Terrain Ruggedness Index TRI

gdaldem TRI -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif
dem/tri.tif

1.  calculate Topographic Position Index TPI

gdaldem TPI -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif
dem/tpi.tif

1.  calculate Roughness

gdaldem roughness -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif
dem/roughness.tif     

##**OGR Commands

**Select a polygon and create a new shape file**

     ogrinfo -al -geom=NO shp/TM_WORLD_BORDERS.shp

1.  base on an attribute

rm -f shp/TM_UGANDA_BORDERS-0.3.\* ogr2ogr -overwrite -f \"ESRI
Shapefile\" -where \"NAME = \'Uganda\'\" shp/TM_UGANDA_BORDERS-0.3.shp
shp/TM_WORLD_BORDERS.shp

1.  base on dimension of the polygons

rm -f shp/TM_LARGE_BORDERS.\* ogr2ogr -overwrite -f \"ESRI Shapefile\"
-sql \"SELECT \* FROM TM_WORLD_BORDERS WHERE OGR_GEOM_AREA \> 100 \"
shp/TM_LARGE_BORDERS.shp shp/TM_WORLD_BORDERS.shp     

**Add attribute and calculate a new value**

     rm -f shp/TM_WORLD_BORDERS_Area100.shp ogr2ogr
shp/TM_WORLD_BORDERS_Area100.shp shp/TM_WORLD_BORDERS.shp

ogrinfo -sql \"ALTER TABLE TM_WORLD_BORDERS_Area100 ADD COLUMN
Area100 real(12,0)\" shp/TM_WORLD_BORDERS_Area100.shp

ogrinfo -dialect SQLite -sql \"UPDATE TM_WORLD_BORDERS_Area100 set
Area100 = AREA + 10 \" shp/TM_WORLD_BORDERS_Area100.shp     

more example at <http://www.gdal.org/ogr_sql.html>

##### PKTOOLS Commands

**Create a mask**

The same operation that we have done before
    gdal_translate -of XYZ vegetation/ETmean08-11_crop.tif vegetation/ETmean08-11_crop.txt    
    awk '{if ($3>2 && $3<4) {print $1,$2,50 } else {print}}' vegetation/ETmean08-11_crop.txt > vegetation/ETmean08-11_crop_trh.txt    
    gdal_translate -ot Byte vegetation/ETmean08-11_crop_trh.txt vegetation/ETmean08-11_crop_trh.tif    

can be done more efficient using pkgetmask. We can create 3 masks using
different thresholds values.

    pkgetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 -min 1 -max 2 -data 1 -nodata 0 -ot Byte -i vegetation/ETmean08-11.tif -o vegetation/ETmean08-11_01_trhA.tif    
    pkgetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 -min 5 -max 8 -data 1 -nodata 0 -ot Byte -i vegetation/ETmean08-11.tif -o vegetation/ETmean08-11_01_trhB.tif    
    pkgetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 -min 0 -max 10 -data 0 -nodata 1 -ot Byte -i vegetation/ETmean08-11.tif -o vegetation/ETmean08-11_01_trhC.tif    

**Set a mask to other image**

Use the prepared mask and apply to the image.
    pksetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 \    
    -m vegetation/ETmean08-11_01_trhA.tif -msknodata 1 -nodata -9 \    
    -m vegetation/ETmean08-11_01_trhB.tif -msknodata 1 -nodata -5 \    
    -m vegetation/ETmean08-11_01_trhC.tif -msknodata 1 -nodata -10 \    
    -i vegetation/ETmean08-11.tif -o vegetation/ETmean08-11_01_msk.tif    

**Composite images**

    

1.  create a mask to apply during the composite

pkgetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 -min 0 -max 25 -data 0
-nodata 1 -ot Byte -i LST/LST_MOYDmax_month1.tif -o
LST/LST_MOYDmax_month1-msk.tif     

    

1.  Calculate mean and standard deviation with several images

pkcomposite \$(for file in LST/LST_MOYDmax_month??.tif
LST/LST_MOYDmax_month?.tif ; do echo -i \$file ; done ) -m
LST/LST_MOYDmax_month1-msk.tif -msknodata 0 -cr mean -dstnodata 0 -co
COMPRESS=LZW -co ZLEVEL=9 -o LST/LST_MOYDmax_monthMean.tif pkcomposite
\$(for file in LST/LST_MOYDmax_month??.tif
LST/LST_MOYDmax_month?.tif ; do echo -i \$file ; done ) -m
LST/LST_MOYDmax_month1-msk.tif -msknodata 0 -cr stdev -dstnodata -1
-co COMPRESS=LZW -co ZLEVEL=9 -o LST/LST_MOYDmax_monthStdev.tif
     Pkcomposite is very flexible, it can deal with different
extents, resolutions, and can be used in combination with gdal comand to
make composite of modis immages (see [ Download MODIS Land Surface
Temperature (\*.hdf) from Nasa ftp ](wiki:modiswget "wikilink"))

An alternative way is to use pkstatprofile

    

1.  Create a multiband vrt

gdalbuildvrt -overwrite -separate LST/LST_MOYDmax_month.vrt
LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif

1.  Calculate mean and standard deviation

pkstatprofile -co COMPRESS=LZW -nodata 0 -f mean -f stdev -i
LST/LST_MOYDmax_month.vrt -o LST/LST_MOYDmax_month_mean_stdev.tif

    

**Filter/Aggregate images**

    

1.  mean aggregation

pkfilter -co COMPRESS=DEFLATE -co ZLEVEL=9 -nodata 0 -ot Float32 -dx 10
-dy 10 -f mean -d 10 -i LST/LST_MOYDmax_monthMean.tif -o
LST/LST_MOYDmax_monthMean_aggreate10mean.tif

1.  mean circular moving window

pkfilter -co COMPRESS=DEFLATE -co ZLEVEL=9 -nodata 0 -ot Float32 -dx 11
-dy 11 -f mean -c -i LST/LST_MOYDmax_monthMean.tif -o
LST/LST_MOYDmax_monthMean_circular11mean.tif     

**Images statistic and histogram**

    pkstat -hist -nbin 100 -src_min 0 -i vegetation/GPPstdev08-11.tif    
    pkstat -hist -src_min 0 -i temperature/ug_bio_3.tif    

**Images reclassification**

    pkstat -hist -i temperature/ug_bio_3.tif | grep -v " 0" | awk '{ if ($1<75) { print $1 , 0 } else { print $1 , 1 } }' > temperature/reclass_ug_bio_3.txt    
    pkreclass -co COMPRESS=DEFLATE -co ZLEVEL=9 -code temperature/reclass_ug_bio_3.txt -i temperature/ug_bio_3.tif -o temperature/reclass_ug_bio_3.tif    

**Zonal statistic (polygon extraction)

     rm -f shp/polygons_stat.\* pkextractogr -srcnodata
-339999995214436424907732413799364296704 -r mean -r stdev -r min -i
vegetation/GPPmean08-11.tif -s shp/polygons.sqlite -o
shp/polygons_stat.sqlite

pkextractogr -f \"ESRI Shapefile\" -srcnodata
-339999995214436424907732413799364296704 -r mean -r stdev -r min -i
vegetation/GPPmean08-11.tif -s shp/polygons.sqlite -o
shp/polygons_stat.shp

1.  we can also create a csv that can be manipulate later on with awk

rm -f shp/polygons_stat.csv pkextractogr -f CSV -srcnodata
-339999995214436424907732413799364296704 -r mean -r stdev -r min -i
vegetation/GPPmean08-11.tif -s shp/polygons.sqlite -o
shp/polygons_stat.csv     

**Zonal statistic (point extraction)**

    

1.  at point location

rm shp/point_stat.csv pkextractogr -f CSV -srcnodata
-339999995214436424907732413799364296704 -r mean -r stdev -r min -i
vegetation/GPPmean08-11.tif -s shp/presence.shp -o shp/point_stat.csv

1.  at point location + 1 pixel around

rm shp/point-buf_stat.csv pkextractogr -f CSV -buf 2 -srcnodata
-339999995214436424907732413799364296704 -r mean -r stdev -r min -i
vegetation/GPPmean08-11.tif -s shp/presence.shp -o
shp/point-buf_stat.csv     

Remove all the output

    rm -f vegetation/GPPcv08-11.tif LST/*_crop.tif vegetation/ETmean08-11_crop_trh.tif vegetation/ETmean08-11_crop_trh.txt vegetation/ETmean08-11_crop.txt vegetation/ETmosaic.vrt vegetation/ETmosaic.tif vegetation/stack_UL.tif vegetation/stack_UR.tif vegetation/stack_LL.tif vegetation/stack_LR.tif vegetation/stack.vrt vegetation/tiles.* vegetation/ETmean08-11_crop_proximity.tif vegetation/ETmean08-11_crop_buffer.tif dem/slope.tif dem/aspect.tif dem/tri.tif dem/tpi.tif dem/roughness.tif vegetation/ETmean08-11_01_trh?.tif LST/LST_MOYDmax_month1-msk.tif LST/LST_MOYDmax_monthStdev.tif LST/LST_MOYDmax_monthMean.tif LST/LST_MOYDmax_month_mean_stdev.tif LST/LST_MOYDmax_month.vrt LST/LST_MOYDmax_monthMean_aggreate10mean.tif LST/LST_MOYDmax_monthMean_circular11mean.tif temperature/reclass_ug_bio_3.tif temperature/reclass_ug_bio_3.txt shp/polygons_stat.csv shp/polygons_stat.* shp/TM_WORLD_BORDERS_Area100.*    
