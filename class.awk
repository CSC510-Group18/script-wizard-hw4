#!/usr/bin/awk -f

BEGIN {
    FS = ","
}

NR > 1 {
    class[$3]++
}

END {
    for (c in class) {
        print "Class " c ": " class[c] " passengers"
    }
}
