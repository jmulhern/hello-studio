# Use the official Node.js image as the base
FROM node:20

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install dependencies and build the application
RUN npm install && yarn install && yarn build

# Expose the port the app will run on
EXPOSE 3333

# Serve the app using a lightweight HTTP server
CMD ["npm", "run", "start"]