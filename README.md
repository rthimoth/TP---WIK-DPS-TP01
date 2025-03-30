# API Ping - TP01

Une API développée en TypeScript qui renvoie les headers d'une requête HTTP lors d'un appel à l'endpoint `/ping`.

## Prérequis

- Node.js
- npm ou yarn

## Installation

1. Clonez ce dépôt :
   ```
   git clone https://github.com/votre-nom-utilisateur/wik-dps-tp01.git
   cd wik-dps-tp01
   ```

2. Installez les dépendances :
   ```
   npm install
   ```

## Configuration

Le serveur écoute par défaut sur le port 3000. Vous pouvez modifier ce port en définissant la variable d'environnement `PING_LISTEN_PORT` :

### Sous Linux/Mac :
```bash
export PING_LISTEN_PORT=8080
```

### Sous Windows (PowerShell) :
```powershell
$env:PING_LISTEN_PORT=8080
```

## Compilation et exécution

1. Compilez le projet :
   ```
   npm run build
   ```

2. Lancez le serveur :
   ```
   npm start
   ```

## Utilisation

Une fois le serveur démarré, vous pouvez tester l'API :

  visitez `http://localhost:3000/ping` dans votre navigateur.

- Toute autre URL retournera une réponse vide avec un code 404.

## Développement

Pour lancer le serveur en mode développement avec rechargement automatique :




# npm install
# npm run build
# npm start
##PING_LISTEN_PORT=8080 npm start