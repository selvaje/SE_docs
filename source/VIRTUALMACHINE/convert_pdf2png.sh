
for p in $(seq 0 10) ; do 
    convert -density 400   -trim  Installation_vm_osgeo-live14.pdf[$p]  -flatten  Installation_vm_osgeo-live14_p$p.png
done 
