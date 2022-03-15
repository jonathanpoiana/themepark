# Run All Scripts for Batch Importing from Excel csvs

python ./scripts/building/batch.py | psql -Upostgres
python ./scripts/customers/batch.py | psql -Upostgres
python ./scripts/fooddinning/batch.py | psql -Upostgres
python ./scripts/staff/batch.py | psql -Upostgres
python ./scripts/events/batch.py | psql -Upostgres
