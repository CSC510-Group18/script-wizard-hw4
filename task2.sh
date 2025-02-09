#!/bin/bash

echo "Lines with banana"
grep "banana" sample.txt

echo

echo "Lines without banana"
grep -v "banana" sample.txt

echo

echo "Unique lines"
sort sample.txt | uniq

echo

echo "Word occurrences"
sort sample.txt | uniq -c

echo

echo "Number of occurrences of word 'banana'"
sort sample.txt | uniq -c | grep "banana"
