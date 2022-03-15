# echo -n Enter Event event: 
# read NAME

# echo -n Enter footitem Location: 
# read LOCATION

# echo -n Enter footitem Amount IN CENTS: 
# read AMOUNT




# # SQL Template. $NAME Replaces the variable with the stored name. String is converted to Uppercase to prevent duplicates
# echo "INSERT INTO fooditem(name, location, amount) VALUES (
#     UPPER('$NAME'),
#     UPPER('$LOCATION'),
#     $AMOUNT
#     )" | psql -U postgres