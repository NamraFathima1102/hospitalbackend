# Use a small Node image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install deps
COPY package*.json ./
RUN npm install --production

# Copy application source
COPY . .

# Expose the app port (adjust if different)
EXPOSE 8000

# Default environment (override at runtime if needed)
ENV NODE_ENV=production
# Start the app
CMD ["npm", "start"]
