for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile
    # edit the line below so that the lowest values are output
    cut -f "$1","$2","$3" $gapminderfile | sort -"$5" | head -"$4";
done
