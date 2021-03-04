
for p in $(seq 0 9) ; do 
    convert -density 400   -trim  Installation_vm_osgeo-live13.pdf[$p]  -flatten  Installation_vm_osgeo-live13_p$p.png
done 
