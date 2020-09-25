#Task 1
cat wages.csv | cut -d , -f 1,2 | sort -k 1,2 -V | uniq -d | tr "," " " >> testSort.txt

#Task 2
echo "highest earner: " | cat wages.csv | cut -d , -f 1,2,4 |  sort -n -r -k 4 | head -n 1
echo "lowest earner: " | cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 4 | head -n 1
echo "number of females in top 10 earners: " | cat wages.csv | sort -n -k 3 | head -n 11 | grep -c "female"

#Task 3
highschool=$(cat wages.csv | cut -d , -f 3,4 | tr "," " " | grep "12" | sort -n | head -n 1 | cut -d , -f 2)
college=$(cat wages.csv | cut -d , -f 3,4 | tr "," " " | grep "16" | sort -n | head -n 1 | cut -d , -f 2)
echo "$college - $highschool" | bc