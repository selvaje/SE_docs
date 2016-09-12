


for file in *.tif ; do  
    for km in 1 5 10 50 100 ; do 
	km=$km
	res=$( expr $km \* 4)
	for aggreg in min max mean median stdev ; do 	    
	    filename=$( basename $file .tif) 
	    pkfilter -co COMPRESS=DEFLATE -co ZLEVEL=9 -ot Float32 -of GTiff -nodata -9999 -dx $res -dy $res -f $aggreg  -d $res -i $file  -o ${filename}_${km}KM${aggreg}.tif    
	done 
    done 
done 

