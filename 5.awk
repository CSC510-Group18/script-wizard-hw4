#!/usr/bin/awk -f

BEGIN {
    FS = "," 
}

NR <= 5 {
    print
}