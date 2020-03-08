# Colorado Community College System (CCCS) GIS Boundaries

This project contains spatial (GIS) boundaries for the
CCCS-defined schools.  Service areas defined based on
[SP 9-20b](https://www.cccs.edu/policies-and-procedures/system-presidents-procedures/25687-2/),
also available in PDF format within this repository.

## PostGIS source format

The source format for the data is in PostGIS format.  All other formats
are generated from the PostGIS formatted data.

### Load to PostGIS

Create database and deploy scripts.

```bash
git clone https://github.com/rustprooflabs/cccs-service-area.git
cd cccs-service-area
psql -c "CREATE DATABASE cccs;"
cd ./db
sqitch deploy db:pg:cccs 
```

Load data into empty database

```bash
cd cccs-service-area/db
psql -d cccs -f ./data/load_service_areas.sql
```

## PostgreSQL 10 minimum

Primary key column(s) use the `IDENTITY` syntax for auto-incrementing IDs,
availalbe with Postgres 10 and newer.



