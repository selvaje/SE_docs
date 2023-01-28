
for p in $(seq 0 12) ; do 
    convert -density 400   -trim  Installation_vm_osgeo-live15.pdf[$p]  -flatten  Installation_vm_osgeo-live15_p$p.png
done 
