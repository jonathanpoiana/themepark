import fileinput
import subprocess
import random

m = subprocess.check_output('echo "SELECT id FROM building" | psql -t -U postgres', shell=True).strip().split('\n')
s = subprocess.check_output('echo "SELECT id FROM staff" | psql -t -U postgres', shell=True).strip().split('\n')

messages = [
    "Fixed Doorframe",
    "Cleaned Bathroom",
    "Fixed HVAC",
    "Cleaned Office",
    "Rekeyed Lock",
    "Repaired Railing"
]

print("DELETE from buildingmaintenance;")


rows = []
print("INSERT INTO buildingmaintenance(message, building, staff) VALUES")

for i in range(100):
    rows.append(str((
        random.choice(messages),
        int(random.choice(m)),
        int(random.choice(s))
    )))

print(",\n\t".join(rows))
print(";")