
echo "select staff.first_name, staff.last_name, 
    building.name, 
    message 
    
    FROM buildingmaintenance
    
    
    inner join staff on staff.id=staff 
    inner join building on building=building.id;" | psql -U postgres