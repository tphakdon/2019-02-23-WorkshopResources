# $1 is field to cut 
#  $2 species high or low
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile
    if [ "$2" = "high" ] 
    then
            cut -f "$1" $gapminderfile | sort -n | tail -1
    else
            cut -f "$1" $gapminderfile | sort -n | head -1
    fi
done
