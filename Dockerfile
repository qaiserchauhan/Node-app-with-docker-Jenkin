# Use official Node.js image
FROM node:latest

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy rest of the files
COPY . .

# Expose port (same as your app)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
