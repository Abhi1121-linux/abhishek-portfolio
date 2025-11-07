const WebSocket = require('ws');
const fs = require('fs');
const path = require('path');

const wss = new WebSocket.Server({ port: 3000 });

wss.on('connection', ws => {
  console.log('Client connected');
  ws.send('Connected to WebSocket');

  // Watch for changes in website folder
  const watchDir = path.join(__dirname);
  fs.watch(watchDir, { recursive: true }, (eventType, filename) => {
    ws.send(`Update detected: ${filename}`);
  });
});

