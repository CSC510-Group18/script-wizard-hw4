#!/usr/bin/gawk -f

BEGIN {
    FS = "," 
}

NR <= 5 {
    print
}