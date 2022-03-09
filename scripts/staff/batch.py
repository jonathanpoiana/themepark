


print("DELETE FROM staff;")

rows = []
with open("public/staff.csv") as f:
    for line in f:
        row = line.split(",")
        id, first_name, last_name, age, phone, email, department, rolename, pay = row[0:9]

        rows.append(str((
            first_name, 
            last_name, 
            int(age), 
            phone, 
            email, 
            department, 
            rolename, 
            0 if pay == "" else int(int(pay) * 100)
            )))
print("INSERT INTO staff(first_name, last_name, age, phone, email, department, rolename, pay) VALUES ")
print(",\n\t".join(rows))
print(";")
