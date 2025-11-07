# Use lightweight Nginx image
FROM nginx:alpine

# Install NodeJS for WebSocket server
RUN apk add --no-cache nodejs npm

# Copy website files into Nginx's html directory
COPY ../ /usr/share/nginx/html/

# Copy WebSocket server
COPY ../websocket-server.js /usr/src/app/websocket-server.js

WORKDIR /usr/src/app

