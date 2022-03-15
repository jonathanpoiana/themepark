


print("DELETE FROM building;")

rows = []
with open("public/building.csv") as f:
    skipedHeader = False
    for line in f:
        if not skipedHeader:
            skipedHeader = True
            continue
        row = line.split(",")
        id, name = row[0:2]
        name = name.replace("\n", "").replace("\r", "")

        rows.append("('" + name + "')")
print("INSERT INTO building(name) VALUES ")
print(",\n\t".join(rows))
print(";")
