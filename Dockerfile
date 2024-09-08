# Dockerfile for your Node.js application

# Use an official Node.js runtime as a parent image
FROM node:22-alpine

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# Copy the current directory's package.json and package-lock.json files
# to the container at /usr/src/app
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the application
CMD [ "npm", "start" ]