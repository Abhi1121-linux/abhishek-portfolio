FROM nginx:alpine

# Copy website files into Nginx html directory
COPY ../ /usr/share/nginx/html/

# Install NodeJS for WebSocket
RUN apk add --no-cache nodejs npm

# Copy WebSocket server
COPY websocket-server.js /usr/src/app/websocket-server.js
WORKDIR /usr/src/app

# Expose ports
EXPOSE 80 3000

# Start Nginx + WebSocket
CMD sh -c "nginx -g 'daemon off;' & node websocket-server.js"

