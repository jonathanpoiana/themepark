echo -n Enter Customer Email:

# Store The Input From The User in the variable NAME
read EMAIL 

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "SELECT * FROM customers WHERE email LIKE UPPER('%$EMAIL%')" | psql -U postgres