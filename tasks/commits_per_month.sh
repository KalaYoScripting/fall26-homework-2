#!/bin/bash
# Fixed issue (#10)
MAX=20

git log --date=format:%Y-%m --pretty=format:%ad |
sort | uniq -c | sort -k2 -r |
while read count month; do
    BAR=""

    for ((i=0; i<count; i++)); do
        BAR="${BAR}█"
    done

    echo "$month $BAR $count"
done

