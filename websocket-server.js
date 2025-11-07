const WebSocket = require('ws');
const wss = new WebSocket.Server({ port: 3000 });

wss.on('connection', ws => {
  console.log('Client connected');
  ws.send('Connected to WebSocket server');
});

