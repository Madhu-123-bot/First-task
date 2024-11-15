# Use Node.js 18 as the base image
FROM node:18

# Setting the Work Dir inside the container
WORKDIR /app

# Copying the package files to the current working directory
COPY package*.json ./

# Installing the node dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the container port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
