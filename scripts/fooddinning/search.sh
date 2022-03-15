echo -n Enter Fooditem NAME:

# Store The Input From The User in the variable NAME
read NAME 

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "SELECT * FROM fooditem WHERE email LIKE UPPER('%$NAME%')" | psql -U postgres