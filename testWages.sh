#Task 1: Create file with unique gender-yearsExperience combinations sorted
cat wages.csv | cut -d , -f 1,2 | sort -k 1,2 -V | uniq -d | tr "," " " >> testSort.txt
#
#Task 2: Return highest earner, lowest earner, and number of females in top ten earners
echo "highest earner: "
cat wages.csv | cut -d , -f 1,2,4 | sort -n -r -k 4 | head -n 1 | tr "," " "
echo "lowest earner: "
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 4 | head -n 1 | tr "," " "
echo "number of females in top 10 earners: "
cat wages.csv | sort -n -k 3 | head -n 11 | grep -c "female"
#
#Task 3: Effect of graduating college on minimum wage
echo "Effect of Graduating"
highschool=$(cat wages.csv | cut -d , -f 3,4 | tr "," " " | grep "12" | sort -n | head -n 1 | cut -d , -f 2)
college=$(cat wages.csv | cut -d , -f 3,4 | tr "," " " | grep "16" | sort -n | head -n 1 | cut -d , -f 2)
echo "$college - $highschool"
