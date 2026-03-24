# Lightweight Node image
FROM node:24.14.0-alpine

WORKDIR /app

# Install serve
RUN npm install -g serve

# Copy built React files from artifact
COPY dist ./dist

# Expose port
EXPOSE 80

# Run the app
CMD ["serve", "-s", "dist", "-l", "80"]