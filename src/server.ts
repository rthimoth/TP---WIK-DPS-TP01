import * as http from 'http';

const DEFAULT_PORT = 8080;

// Récupération du port depuis la variable d'environnement ou utilisation du port par défaut
const port = process.env.PING_LISTEN_PORT ? parseInt(process.env.PING_LISTEN_PORT, 10) : DEFAULT_PORT;

const server = http.createServer((req, res) => {
  
  if (req.url === '/ping' && req.method === 'GET') {
    res.setHeader('Content-Type', 'application/json');
    res.statusCode = 200;
    
    const requestHeaders = req.headers;
    
    res.end(JSON.stringify(requestHeaders));
  } else {
    res.statusCode = 404;
    res.setHeader('Content-Type', 'text/plain');
    res.end('erreur 404');
  }
});

server.listen(port, () => {
  console.log(`Serveur démarré sur le port ${port}`);
});
