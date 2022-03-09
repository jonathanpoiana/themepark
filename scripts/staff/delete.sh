echo -n Enter Staff Name:

# Store The Input From The User in the variable NAME
read NAME 

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "DELETE FROM staff WHERE name = UPPER('$NAME')" | psql -U postgres