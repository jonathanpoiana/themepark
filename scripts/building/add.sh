echo -n Enter BUILDING NAME 
read NAME


# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "INSERT INTO building (name) VALUES (
    '$NAME'
    )" | psql -U postgres