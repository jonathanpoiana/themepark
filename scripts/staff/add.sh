echo -n Enter FIRST_NAME Staff Name: 
read FIRST_NAME

echo -n Enter LAST_NAME Staff Name: 
read LAST_NAME

echo -n Enter AGE Staff Name: 
read AGE

echo -n Enter PHONE Staff Name: 
read PHONE

echo -n Enter EMAIL Staff Name: 
read EMAIL

echo -n Enter DEPARTMENT Staff Name: 
read DEPARTMENT

echo -n Enter ROLENAME Staff Name: 
read ROLENAME

echo -n Enter PAY Staff Name: 
read PAY

# SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
echo "INSERT INTO staff(first_name, last_name, age, phone, email, department, rolename, pay) VALUES (
    '$FIRST_NAME',
    '$LAST_NAME',
    $AGE,
    '$PHONE',
    UPPER ('$EMAIL'),
    '$DEPARTMENT',
    '$ROLENAME',
    $PAY
    )" | psql -U postgres