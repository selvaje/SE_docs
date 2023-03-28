for f in *.[jJ][pP][gG]; do
    echo $f;     convert $f  -resize 400   print_$f
done
