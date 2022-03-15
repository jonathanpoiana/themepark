echo -n Enter fooditem name:

# Store The Input From The User in the variable NAME
read FOODITEM

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "SELECT * FROM staff WHERE name = UPPER('$FOODITEM')" | psql -U postgres