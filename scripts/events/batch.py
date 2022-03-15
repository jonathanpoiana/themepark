


print("DELETE FROM events;")

rows = []
with open("public/events.csv") as f:
    skipedHeader = False
    for line in f:
        if not skipedHeader:
            skipedHeader = True
            continue
        row = line.split(",")
        event, date, time, performers, location, price, seating,  = row[0:7]

        rows.append(str((
            event, 
            date, 
            time, 
            performers, 
            location, 
            int(float(price) * 100), 
            int(seating)
            )))
print("INSERT INTO events(event, date, time, performers, location, price, seating) VALUES ")
print(",\n\t".join(rows))
print(";")
