


print("DELETE FROM fooditem;")

rows = []
with open("public/fooddinning.csv") as f:
    skipedHeader = False
    for line in f:
        if not skipedHeader:
            skipedHeader = True
            continue
        row = line.split(",")
        location, name, price = row[0:3]

        rows.append(str((
            location, 
            name, 
            int(float(price.replace("\n","").replace("\r", "")) * 100)
            )))
print("INSERT INTO fooditem(name, location, amount) VALUES ")
print(",\n\t".join(rows))
print(";")
