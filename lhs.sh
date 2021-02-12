
if [ $# -ne 2 ] ; then
    echo "Usage: `basename $0` <in-file> <out-file>" >&2
        exit 1
        fi

        infile=$1
        outfile=$2

        cat $infile | awk -F '|' '{ printf "|%s|%s|%s|%s|%s|\n", $1,$2,$3,$4,$5 }' | sed 's/[     ][  ]*//g' > $outfile


