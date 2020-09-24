# Task 1: Create file with unique gender-yearsExperience pairs sorted
cat wages.csv | cut -d , -f 1,2 | sort -k 1 -n | uniq -d | sort -k 2 -n >> sortedWages.txt

