# Nginx base
FROM nginx:alpine

# Copy website files to Nginx
COPY ../ /usr/share/nginx/html/

# Install Node.js for WebSocket
RUN apk add --no-cache nodejs npm

# Copy WebSocket server
COPY ../websocket-server.js /usr/src/app/websocket-server.js
WORKDIR /usr/src/app

# Expose Nginx and WebSocket ports
EXPOSE 80 3000

# Start Nginx and WebSocket server
CMD ["sh", "-c", "nginx -g 'daemon off;' & node websocket-server.js"]

