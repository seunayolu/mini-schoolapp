# Use Node.js 23 Alpine as the base image
FROM node:23-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose port (default: 3000, change if needed)
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
