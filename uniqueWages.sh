# Task 1: Create file with unique gender-yearsExperience pairs sorted
cat wages.csv | cut -d , -f 1,2 | sort -k 1,2 -V | uniq -d | tr "," " " >> sortedWages.txt

# Task 2: 
echo "highest earner:" | cat wages.csv | sort -k 3 | head -n 2 | tail -n 1
echo "lowest earner:" | cat wages.sv | sort -k 3 | tail -n 1
echo "number of females in top 10 earners:" | cat wages.csv | head -n 11 | grep -c "female"
