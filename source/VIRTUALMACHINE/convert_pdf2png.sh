
for p in $(seq 0 11) ; do 
    convert -density 400   -trim  Installation_vm_Ubuntu26.04.pdf[$p]  -flatten  Installation_vm_Ubuntu26.04_p$p.png
done 
