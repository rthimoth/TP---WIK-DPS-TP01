# Image de base avec Node.js
FROM node:lts-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm ci --only=production

# Copier les fichiers de configuration TypeScript
COPY tsconfig.json ./

# Copier les fichiers source
COPY src/ ./src/

# Compiler l'application TypeScript en JavaScript
RUN npm run build

# Supprimer les fichiers source et les dépendances de développement pour réduire la taille de l'image
RUN rm -rf src/ tsconfig.json

# Exposer le port sur lequel l'application écoute
# EXPOSE 8080

# Définir la variable d'environnement pour le port (peut être écrasée lors du démarrage du conteneur)
ENV PING_LISTEN_PORT=8080

# Commande pour démarrer l'application
CMD ["node", "dist/server.js"] 