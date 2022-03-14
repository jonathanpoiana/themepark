echo -n Enter Customer Email:

# Store The Input From The User in the variable NAME
read EMAIL 

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "DELETE FROM customers WHERE email = UPPER('$EMAIL')" | psql -U postgres