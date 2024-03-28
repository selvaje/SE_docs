for f in *.[jJ][pP][gG]; do
    echo $f;     convert $f  -resize 300   print_$f
done
