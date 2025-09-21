# Utilise Debian comme image de base
FROM debian:latest

# Mise à jour du système et installation des outils PostgreSQL
RUN apt-get update && apt-get install -y postgresql-client

# Script d'aide avec les commandes courantes
RUN echo '#!/bin/bash' > /usr/local/bin/pg-help && \
    echo 'echo "=== Commandes PostgreSQL utiles ==="' >> /usr/local/bin/pg-help && \
    echo 'echo "psql -h HOST -p PORT -U USER -d DATABASE  # Connexion basique"' >> /usr/local/bin/pg-help && \
    echo 'echo "pgcli -h HOST -p PORT -U USER DATABASE    # Client interactif moderne"' >> /usr/local/bin/pg-help && \
    echo 'echo "pg_dump -h HOST -p PORT -U USER DATABASE  # Sauvegarde"' >> /usr/local/bin/pg-help && \
    echo 'echo "pg_restore -h HOST -p PORT -U USER -d DB  # Restauration"' >> /usr/local/bin/pg-help && \
    echo 'echo "psql -h HOST -p PORT -U USER -l          # Lister les bases"' >> /usr/local/bin/pg-help && \
    echo 'echo ""' >> /usr/local/bin/pg-help && \
    echo 'echo "Variables environnement actuelles:"' >> /usr/local/bin/pg-help && \
    echo 'echo "PGHOST=$PGHOST"' >> /usr/local/bin/pg-help && \
    echo 'echo "PGPORT=$PGPORT"' >> /usr/local/bin/pg-help && \
    echo 'echo "PGUSER=$PGUSER"' >> /usr/local/bin/pg-help && \
    echo 'echo "PGDATABASE=$PGDATABASE"' >> /usr/local/bin/pg-help && \
    chmod +x /usr/local/bin/pg-help

# # Construction de l'image
# docker build -t postgres-tools .

# # Commandes utiles une fois dans le conteneur :
# pg-help : Affiche les commandes courantes