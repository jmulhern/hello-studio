# Use the official Node.js image as the base
FROM node:18

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install dependencies and build the application
RUN npm install && npm run build

# Expose the port the app will run on
EXPOSE 3000

# Serve the app using a lightweight HTTP server
CMD ["npx", "serve", "-s", "build", "-l", "3000"]