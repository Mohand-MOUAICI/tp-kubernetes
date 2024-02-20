# Utilise l'image de base officielle Python 3
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers nécessaires dans le conteneur
COPY ./motd_api.py /app/motd_api.py
COPY requirements.txt /app/requirements.txt

# Installe les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Expose le port sur lequel l'application va tourner
EXPOSE $APP_PORT

# Commande exécutée au démarrage du conteneur
CMD ["python", "motd_api.py"]
