# Create network for database services
docker network create my-network

# Run PostgreSQL
docker run -d --rm \
    --name postgres-db \
    --network my-network \
    --env-file '/Users/msavaton/Library/Mobile Documents/com~apple~CloudDocs/Etudes/ESIEA/4A/S7/Virtu_et_conteneurs/TD Docker/3/env.txt' \
    -v postgres_data:/var/lib/postgresql/data \
    postgres:latest

# Run your tools container
docker run -it --rm \
    --name psql-client \
    --network my-network \
    debian-psql

# To connect to the database, use the command:
# psql -h postgres-db -U joe -d doe