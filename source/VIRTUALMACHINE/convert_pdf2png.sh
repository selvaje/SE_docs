
for p in $(seq 0 19) ; do 
    convert -density 400   -trim  Installation_vm_Ubuntu22.04.pdf[$p]  -flatten  Installation_vm_Ubuntu22.04_p$p.png
done 
