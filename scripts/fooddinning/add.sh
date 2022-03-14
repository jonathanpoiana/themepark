echo -n Enter FIRST_NAME Customer Name: 
read FIRST_NAME

echo -n Enter LAST_NAME Customer Name: 
read LAST_NAME

echo -n Enter AGE Customer Name: 
read AGE

echo -n Enter PHONE Customer Name: 
read PHONE

echo -n Enter EMAIL Customer Name: 
read EMAIL

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "INSERT INTO customers(first_name, last_name, age, phone, email) VALUES (
    '$FIRST_NAME',
    '$LAST_NAME',
    $AGE,
    '$PHONE',
    UPPER ('$EMAIL')

    )" | psql -U postgresS