


print("DELETE FROM customers;")

rows = []
with open("public/customers.csv") as f:
    skipedHeader = False
    for line in f:
        if not skipedHeader:
            skipedHeader = True
            continue
        row = line.split(",")
        id, first_name, last_name, age, phone, email = row[0:9]

        rows.append(str((
            first_name, 
            last_name, 
            int(age), 
            phone, 
            email.replace("\n", "").replace("\r","").upper()
            )))
print("INSERT INTO customers(first_name, last_name, age, phone, email) VALUES ")
print(",\n\t".join(rows))
print(";")
