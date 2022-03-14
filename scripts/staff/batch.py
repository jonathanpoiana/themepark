


print("DELETE FROM staff;")

rows = []
with open("public/employee.csv") as f:
    for line in f:
        row = line.split(",")
        id, first_name, last_name, age, phone, email, department, rolename = row[0:8]

        rows.append(str((
            first_name, 
            last_name, 
            int(age), 
            phone, 
            email.upper(),
            department, 
            rolename
            )))
print("INSERT INTO staff(first_name, last_name, age, phone, email, department, rolename) VALUES ")
print(",\n\t".join(rows))
print(";")
