# Use lightweight Node + Nginx base
FROM node:20-alpine

# Install Nginx
RUN apk add --no-cache nginx

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY index.html about.html contact.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY nginx.conf /etc/nginx/nginx.conf

# Copy Node WebSocket server
WORKDIR /usr/src/app
COPY package.json websocket-server.js ./

# Install Node dependencies
RUN npm install

# Expose port 9090
EXPOSE 9090

# Start both Nginx and Node WebSocket server
CMD ["sh", "-c", "nginx -g 'daemon off;' & node websocket-server.js"]

