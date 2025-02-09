#!/usr/bin/awk -f

BEGIN {
    FS = ","
    total_age = 0
    passenger_count = 0
}

NR > 1 {
    age = $7  # Age is in the 7th field
    if (age != "") {
        total_age += age
        passenger_count++
    }
}

END {
    average_age = total_age / passenger_count
    printf "Average age of passengers: %.2f\n", average_age
} 