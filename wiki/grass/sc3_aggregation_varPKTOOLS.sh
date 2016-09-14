# aggregate variables 

for file in *.tif ; do  
    for km in 1 5 10 50 100 ; do 
	km=$km
	res=$(expr $km \* 4)
	for aggreg in min max mean median stdev ; do 	    
	    filename=$( basename $file .tif) 
	    pkfilter -co COMPRESS=DEFLATE -co ZLEVEL=9 -ot Float32 -of GTiff -nodata -9999 -dx $res -dy $res -f $aggreg  -d $res -i $file  -o ${filename}_${km}KM${aggreg}.tif    
	done 
    done 
done 


echo majority 

for km in 1 5 10 50 100 ; do 
    km=$km
    res=$(expr $km \* 4)
    for aggreg in mode countid ; do
 	if [ $aggreg = "mode" ] ; then naggreg=maj ; fi 
 	if [ $aggreg = "countid" ] ; then naggreg=count ; fi 
 	pkfilter -co COMPRESS=DEFLATE  -co ZLEVEL=9 -ot Byte -nodata 255 -dx $res -dy $res -f $aggreg  -d $res -i   geomorphon.tif   -o geom_${km}KM${naggreg}.tif
    done 
done


for km in 1 5 10 50 100 ; do 
    km=$km
    res=$(expr $km \* 4)
    for class in $(seq 1 10) ;  do  
	if [ $class  = "1"  ]    ; then class2=flat     ;   fi                                                                                                                              
	if [ $class  = "2"  ]    ; then class2=peak     ;   fi                                                                                                                              
 	if [ $class  = "3"  ]    ; then class2=ridge    ;   fi                                                                                                                              
 	if [ $class  = "4"  ]    ; then class2=shoulder ;   fi                                                                                                                              
 	if [ $class  = "5"  ]    ; then class2=spur     ;   fi                                                                                                                              
 	if [ $class  = "6"  ]    ; then class2=slope    ;   fi                                                                                                                              
 	if [ $class  = "7"  ]    ; then class2=hollow   ;   fi                                                                                                                              
 	if [ $class  = "8"  ]    ; then class2=footslope;   fi                                                                                                                              
 	if [ $class  = "9"  ]    ; then class2=valley   ;   fi                                                                                                                              
 	if [ $class  = "10" ]    ; then class2=pit      ;   fi 
 	pkfilter     -co  COMPRESS=DEFLATE  -co ZLEVEL=9  -ot  Float32 -nodata 255 -dx $res -dy $res -f density -class $class -d $res -i geomorphon.tif -o geom_class${class}_${km}KM.tif
 	gdal_calc.py --co=COMPRESS=DEFLATE --co=ZLEVEL=9  --NoDataValue=0 --type=UInt16 -A geom_class${class}_${km}KM.tif   --calc="( A.astype(float) * 100 )"  --outfile=geom${class2}_${km}KMperc.tif
    done 
done  

echo  calculate shannon index

for km in 1 5 10 50 100 ; do 
    km=$km
    res=$(expr $km \* 4)
    for class in $(seq 1 10) ;  do  
	pksetmask -msknodata 0 -nodata 255 -m   geom_class${class}_${km}KM.tif  -i  geom_class${class}_${km}KM.tif  -o   geom_class255_${class}_${km}KM.tif 
	gdal_calc.py  --co=COMPRESS=LZW --co=ZLEVEL=9 --NoDataValue=0 --type=Float32 --overwrite -A  geom_class${class}_${km}KM.tif -B geom_class255_${class}_${km}KM.tif   --calc="((log ( B  / 100 )) * ( A / 100 ))"  --outfile=geom_classH_${class}_${km}KM.tif
        gdal_edit.py -a_nodata -1  geom_classH_${class}_${km}KM.tif   	
        rm -f  geom_class255_${class}_${km}KM.tif 
    done     
    gdal_calc.py  --co=COMPRESS=LZW --co=ZLEVEL=9  --type=Float32 --overwrite -A geom_classH_1_${km}KM.tif -B geom_classH_2_${km}KM.tif -C geom_classH_3_${km}KM.tif -D geom_classH_4_${km}KM.tif  -E geom_classH_5_${km}KM.tif -F geom_classH_6_${km}KM.tif -G geom_classH_7_${km}KM.tif -H geom_classH_8_${km}KM.tif -I geom_classH_9_${km}KM.tif -J geom_classH_10_${km}KM.tif --calc="((A + B + C + D + E + F + G + H + I + J) * -1  )"  --outfile=geom_${km}KMsha.tif   	

done
