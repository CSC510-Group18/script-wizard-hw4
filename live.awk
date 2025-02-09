#!/usr/bin/awk -f

BEGIN {
    FS = ","
    
}

NR > 1 {
    total[$3] += 1
    survived[$3] += $2
}

END {
    for (class in total) {
        printf "Class: %s\n", class
        printf "Total: %d\n", total[class]
        printf "Survived: %d\n", survived[class]
        printf "Percentage: %.2f\n", survived[class] / total[class] * 100
        printf "-----------------------------------\n"
    }
}
