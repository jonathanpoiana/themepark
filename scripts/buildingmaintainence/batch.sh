
# | python scripts/maintainence/batch.py
echo "SELECT id FROM building" | psql -t -U postgres | python scripts/maintainence/batch.py 