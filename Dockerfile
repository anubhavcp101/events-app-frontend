# Use NodeJS base image
FROM node:16-alpine

# Change the working directory
WORKDIR /app

# Copy application code.
COPY . .

# Install dependencies & build.
RUN npm ci && npm run build

# Start the Spring Boot app
CMD ["node", "server.js"]
