#!/bin/zsh

# docker run -d --rm \
#     --name postgresdb \
#     -e POSTGRES_PASSWORD=johndoe \
#     -e POSTGRES_USER=joe \
#     -e POSTGRES_DB=doe \
#     postgres:latest

# docker run -d --rm \
#     --name postgresdb \
#     --env-file ./env.txt \
#     postgres:latest

# Avec un volume "bin mount"
# docker run -d --rm \
#     --name postgresdb \
#     --env-file ./env.txt \
#     -v ./data:/var/lib/postgresql/data \
#     postgres:latest

# Avec un volume nommé
docker run -d --rm \
    --name postgresdb \
    --env-file ./env.txt \
    -v postgres_data:/var/lib/postgresql/data \
    postgres:latest