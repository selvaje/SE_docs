
for p in $(seq 0 14) ; do 
    convert -density 400   -trim  Installation_vm_osgeo-live16.pdf[$p]  -flatten  Installation_vm_osgeo-live16_p$p.png
done 
